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
    public partial class Goods : System.Web.UI.Page
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


            SqlCommand cmd = new SqlCommand("sp_CreateGoodOrder", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Description", SqlDbType.NVarChar).Value = TextBox1.Text;
            cmd.Parameters.Add("@Unit", SqlDbType.NVarChar).Value = TextBox2.Text;
            cmd.Parameters.Add("@Quantity", SqlDbType.Int).Value = TextBox3.Text;
            cmd.Parameters.Add("@UnitPrice", SqlDbType.Int).Value = TextBox4.Text;
            cmd.ExecuteNonQuery();
            updateTable(cnn);
            cnn.Close();
        }

        private void updateTable(SqlConnection cnn)
        {
            GridView1.DataSourceID = string.Empty;
            DataSet ds = new DataSet();
            string sql = "select * from Goods";

            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();


        }
    }
}