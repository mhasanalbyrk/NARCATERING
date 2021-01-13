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
    public partial class Company : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e) {
            Response.Redirect("Explorer.aspx");
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


            string sqlStr = "insert into Company " +
                            "values('" + TextBox1.Text + "', " + TextBox2.Text + ",  '" + TextBox3.Text + "' , " + TextBox4.Text + ")";
            SqlCommand da = new SqlCommand(sqlStr, cnn);
            da.ExecuteNonQuery();

            updateTable(cnn);
            cnn.Close();
        }
        private void updateTable(SqlConnection cnn)
        {
            GridView1.DataSourceID = string.Empty;
            DataSet ds = new DataSet();
            string sql = "select * from Company ";

            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();


        }
    }
}