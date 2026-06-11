using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kuet_hack_mock
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void onRegisterClicked(object sender, EventArgs e)
        {
            string inputUserName = username.Text.Trim();
            string inputPassword = password.Text;
            string inputRoll = roll.Text.Trim();
            string inputDepartment = department.Text.Trim();
            string inputEmail = email.Text.Trim();

            string connectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            string query = @"INSERT INTO UserInfo
                    (Username, Password, Roll, Department, Email)
                    VALUES
                    (@Username, @Password, @Roll, @Department, @Email)";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Username", inputUserName);
                    cmd.Parameters.AddWithValue("@Password", inputPassword);
                    cmd.Parameters.AddWithValue("@Roll", inputRoll);
                    cmd.Parameters.AddWithValue("@Department", inputDepartment);
                    cmd.Parameters.AddWithValue("@Email", inputEmail);

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
                    catch (SqlException sqlexc)
                    {
                        Response.Write(sqlexc.Message);
                        Response.Redirect("registration.aspx");
                    }
                }
            }
        }
    }
}