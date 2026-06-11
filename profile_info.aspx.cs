using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace kuet_hack_mock
{
    public partial class profile_info : System.Web.UI.Page
    {
        private string connString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                loadUserProfile();
            }
        }

        private void loadUserProfile()
        {
            string currentUsername = Session["Username"].ToString();
            string query = "SELECT Username, Roll, Department, Password FROM UserInfo WHERE Username = @Username";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", currentUsername);
                    try
                    {
                        conn.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                txtUsername.Text = reader["Username"].ToString();
                                txtRoll.Text = reader["Roll"].ToString();
                                txtDepartment.Text = reader["Department"].ToString();
                                txtPassword.Attributes.Add("value", reader["Password"].ToString());

                                lblLoginStatus.Text = "Logged in as: " + txtUsername.Text;
                                lblLastLogin.Text = "Last Login: " + DateTime.Now.ToString("g");
                            }
                        }
                    }
                    catch { }
                }
            }
        }

        protected void onShowPasswordClicked(object sender, EventArgs e)
        {
            if (txtPassword.TextMode == TextBoxMode.Password)
            {
                txtPassword.TextMode = TextBoxMode.SingleLine;
                btnTogglePassword.Text = "Hide";
            }
            else
            {
                txtPassword.TextMode = TextBoxMode.Password;
                btnTogglePassword.Text = "Show";
            }
        }

        protected void onUpdateInfoClicked(object sender, EventArgs e)
        {
            string currentUsername = Session["Username"].ToString();
            string newPassword = txtPassword.Text;
            string query = "UPDATE UserInfo SET Password = @Password WHERE Username = @Username";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Password", newPassword);
                    cmd.Parameters.AddWithValue("@Username", currentUsername);
                    try
                    {
                        conn.Open();
                        int rows = cmd.ExecuteNonQuery();
                        if (rows > 0)
                        {
                            lblMessage.ForeColor = System.Drawing.Color.Green;
                            lblMessage.Text = "Password updated successfully!";
                        }
                    }
                    catch
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Error updating database.";
                    }
                }
            }
        }
    }
}