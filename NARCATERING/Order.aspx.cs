using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NARCATERING
{
    public partial class Order : System.Web.UI.Page
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


            SqlCommand cmd = new SqlCommand("sp_insertorder", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@OrderID", SqlDbType.Int).Value = TextBox3.Text;
            cmd.Parameters.Add("@MenuID", SqlDbType.Int).Value = TextBox4.Text;
            cmd.Parameters.Add("@CompanyName", SqlDbType.NVarChar).Value = TextBox5.Text;
            cmd.Parameters.Add("@Quantity", SqlDbType.Int).Value = TextBox6.Text;
            cmd.Parameters.Add("@Price", SqlDbType.Int).Value = TextBox7.Text;
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


            SqlCommand cmd = new SqlCommand("sp_cancelOrder", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@OrderID", SqlDbType.Int).Value = TextBox8.Text;
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
            string sql = "select * from [Order] order by OrderID";

            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();


        }

        protected void Button3_Click(object sender, EventArgs e) {
            Response.Redirect("Explorer.aspx");
        }
    }
}