using System;
using System.Data.SqlClient;

namespace ZapatozaNameSpace
{
    public class ZDataAccessClass
    {
        public void AccessDatabase()
        {
            // Define your connection string here
            string connectionString = "Data Source=\\SQLEXPRESS;Initial Catalog=ZAPATOZA_DB;Integrated Security=True;";

            // Use the connection string to establish a connection
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Write your database access code here
                // For example:
                string query = "SELECT * FROM [USER]"; // Avoid reserved keywords
                SqlCommand command = new SqlCommand(query, connection);

                try
                {
                    // Open the connection
                    connection.Open();

                    // Execute the command
                    SqlDataReader reader = command.ExecuteReader();

                    // Process data retrieved from the database
                    while (reader.Read())
                    {
                        // Access data using reader
                    }

                    // Close the reader
                    reader.Close();
                }
                catch (Exception ex)
                {
                    // Handle exceptions more gracefully in a real application
                    Console.WriteLine("Error accessing database: " + ex.Message);
                }
            } // Connection will be automatically closed when it goes out of scope
        }
    }
}
