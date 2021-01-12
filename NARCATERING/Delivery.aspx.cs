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

namespace NARCATERING
{
    public partial class Delivery : System.Web.UI.Page
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


            SqlCommand cmd = new SqlCommand("sp_createDelivery", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@DeliveryID", SqlDbType.Int).Value = TextBox1.Text;
            cmd.Parameters.Add("@OrderID", SqlDbType.Int).Value = TextBox2.Text;
            cmd.Parameters.Add("@Address", SqlDbType.NVarChar).Value = TextBox3.Text;

            cmd.Parameters.Add("@Date", SqlDbType.SmallDateTime).Value = DateTime.ParseExact(TextBox4.Text, "yyyy/MM/dd", CultureInfo.InvariantCulture);
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


            SqlCommand cmd = new SqlCommand("sp_addEmployeeToDelivery", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@DeliveryID", SqlDbType.Int).Value = TextBox5.Text;
            cmd.Parameters.Add("@TCKN", SqlDbType.BigInt).Value = TextBox6.Text;
            cmd.ExecuteNonQuery();
            updateTable(cnn);
            cnn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
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


            SqlCommand cmd = new SqlCommand("sp_removeDeliverEmployee", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@DeliveryID", SqlDbType.Int).Value = TextBox7.Text;
            cmd.Parameters.Add("@TCKN", SqlDbType.BigInt).Value = TextBox8.Text;
            cmd.ExecuteNonQuery();
            updateTable(cnn);
            cnn.Close();
        }

        private void updateTable(SqlConnection cnn)
        {
            GridView1.DataSourceID = string.Empty;
            DataSet ds = new DataSet();
            string sql = "select * from Delivery";

            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();


        }

        protected void Button4_Click(object sender, EventArgs e) {
            Response.Redirect("Explorer.aspx");
        }
    }
}