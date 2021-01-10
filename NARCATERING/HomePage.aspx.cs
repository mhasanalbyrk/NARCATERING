using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Configuration;

namespace NARCATERING
{
    public partial class HomePage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            var connectionString =
                "Data Source=DESKTOP-5JSCLSE;Initial Catalog=NARCATERING;Integrated Security=True";
            var cnn = new SqlConnection(connectionString);

            try
            {
                cnn.Open();
            }
            catch (Exception)
            {
                cnn.Close();
                return;
                throw;
            }
        }
    }
}