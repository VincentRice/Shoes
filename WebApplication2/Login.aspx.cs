using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
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


        protected void Btnlogin_Click(object sender, EventArgs e)
        {
            string username = Username.Text;
            string password = Password.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

            string query = "SELECT UserName, UserPassword FROM [USER] WHERE Username = @Username AND UserPassword = CONVERT(VARBINARY(MAX), @Password)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);

                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.Read())
                        {
                            
                            if (username.StartsWith("A-"))
                            {
                                Response.Redirect("AdminPage.aspx");
                            }
                            else
                            {
                                Response.Redirect("UserPage.aspx");
                            }
                        }
                        else
                        {
                            lblSuccessMessage.Text = "";
                            lblSuccessMessage.Visible = false;

                            lblErrorMessage.Text = "Invalid username or password.";
                            lblErrorMessage.Visible = true;
                        }
                    }
                    catch (Exception ex)
                    {
                        lblSuccessMessage.Text = "";
                        lblSuccessMessage.Visible = false;

                        lblErrorMessage.Text = "Error: " + ex.Message;
                        lblErrorMessage.Visible = true;
                    }
                }
            }
        }
    }
}