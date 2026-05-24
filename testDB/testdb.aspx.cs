using System;
using System.Configuration;
using System.Data.SqlClient;

namespace YourProject
{
    public partial class TestDB : System.Web.UI.Page
    {
        protected void btnTest_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            try
            {
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("SELECT @@SERVERNAME", conn);
                    string serverName = cmd.ExecuteScalar().ToString();

                    lblResult.Text = "Connected Successfully! Server: " + serverName;
                }
            }
            catch (Exception ex)
            {
                lblResult.Text = "Connection Failed: " + ex.Message;
            }
        }
    }
}