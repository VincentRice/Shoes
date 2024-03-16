using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

namespace WebApplication2
{
    public partial class Register : System.Web.UI.Page
    {
        protected Label lblErrorMessage;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            string connectionString = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    Page.Response.Write("Connection to database successful!");
                    connection.Close(); 
                }
                catch (Exception ex)
                {
                    Page.Response.Write("Error connecting to database: " + ex.Message);
                }
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            
            string username = txtUser.Text;
            string password = txtPass.Text;
            string confirmPassword = txtConPass.Text;
            string email = txtEmail.Text;

            
            if (password != confirmPassword)
            {
                
                lblErrorMessage.Text = "Passwords do not match.";
                return;
            }

            
            

            
            string connectionString = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO [USER] (UserName, UserPassword, UserEmail) VALUES (@Username, CONVERT(VARBINARY(MAX), @Password), @Email)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.AddWithValue("@Email", email);

                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                    lblErrorMessage.Text = "Registration successful!";
                }
                catch (Exception ex)
                {
                    lblErrorMessage.Text = "Error registering user: " + ex.Message;
                }
            }
        }


    }
}