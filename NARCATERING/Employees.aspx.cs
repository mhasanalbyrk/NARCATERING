using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.SqlServer.Server;

namespace NARCATERING
{
    public partial class Employees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["NARCATERINGConnectionString"].ToString();
            SqlConnection cnn = new SqlConnection(connectionString);

            try
            {
                cnn.Open();
            }
            catch (Exception)
            {
                cnn.Close();
                return;
                
            }

            
            SqlCommand cmd = new SqlCommand("sp_insertemployee", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@TCKN", SqlDbType.BigInt).Value = TextBox1.Text;
            cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = TextBox2.Text;
            cmd.Parameters.Add("@Surname", SqlDbType.NVarChar).Value = TextBox3.Text;
            
            cmd.Parameters.Add("@BirthDate", SqlDbType.SmallDateTime).Value = DateTime.ParseExact(TextBox4.Text, "yyyy/MM/dd", CultureInfo.InvariantCulture); 
            cmd.Parameters.Add("@Age", SqlDbType.SmallInt).Value = TextBox5.Text;
            cmd.Parameters.Add("@Salary", SqlDbType.Int).Value = TextBox6.Text;
            cmd.Parameters.Add("@TelephoneNumber", SqlDbType.Int).Value = TextBox7.Text;
            cmd.Parameters.Add("@Insurence", SqlDbType.NVarChar).Value = TextBox8.Text;
            cmd.Parameters.Add("@NumberOfChildren", SqlDbType.SmallInt).Value = TextBox9.Text;
            cmd.Parameters.Add("@EmployeeType", SqlDbType.NVarChar).Value = TextBox10.Text;
            
                cmd.ExecuteNonQuery();
            updateTable(cnn);
            cnn.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["NARCATERINGConnectionString"].ToString();
            SqlConnection cnn = new SqlConnection(connectionString);

            try
            {
                cnn.Open();
            }
            catch (Exception)
            {
                cnn.Close();
                return;

            }

            
            SqlCommand cmd = new SqlCommand("sp_deleteEmployee", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@TCKN", SqlDbType.BigInt).Value = TextBox11.Text;
            cmd.ExecuteNonQuery();
            updateTable(cnn);
            cnn.Close();
        }
        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void updateTable(SqlConnection cnn)
        {
            GridView1.DataSourceID = string.Empty;
            DataSet ds = new DataSet();
            string sql = "select * from Employee order by Name";

            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();


        }
    }
}