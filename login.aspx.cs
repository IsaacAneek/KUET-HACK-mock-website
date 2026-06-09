using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kuet_hack_mock
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void onLoginClicked(object sender, EventArgs e)
        {
            string inputUserName = username.Text.Trim();
            string inputPassword = password.Text;

            string connnectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            string query = "INSERT INTO UserInfo (Username, Password) VALUES (@Username, @Password)";

            using (SqlConnection conn = new SqlConnection(connnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", inputUserName);
                    cmd.Parameters.AddWithValue("@Password", inputPassword);

                    try
                    {
                        conn.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            Session["Username"] = inputUserName;
                            Response.Redirect("profile_info.aspx");
                        }
                    }
                    catch (SqlException ex)
                    {
                        if (ex.Number == 2627)
                        {
                            Session["Username"] = inputUserName;
                            Response.Redirect("profile_info.aspx");
                        }
                    }
                    catch (Exception exc)
                    {

                    }
                }
            }
        }
    }
}