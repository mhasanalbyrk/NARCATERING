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
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Explorer.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
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


            string sqlStr = "insert into Menu(MenuID, Cost, MenuType) " +
                            "values(" + TextBox7.Text + ", " + TextBox8.Text + ",  '" + TextBox9.Text + "')";
            SqlCommand da = new SqlCommand(sqlStr, cnn);
            da.ExecuteNonQuery();

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


            SqlCommand cmd = new SqlCommand("sp_updateMenuCourse", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MenuID", SqlDbType.Int).Value = TextBox10.Text;
            cmd.Parameters.Add("@Meal1", SqlDbType.NVarChar).Value = TextBox11.Text;
            cmd.Parameters.Add("@Meal2", SqlDbType.NVarChar).Value = TextBox12.Text;
            cmd.Parameters.Add("@Meal3", SqlDbType.NVarChar).Value = TextBox13.Text;
            cmd.Parameters.Add("@Meal4", SqlDbType.NVarChar).Value = TextBox14.Text;



            cmd.ExecuteNonQuery();
            updateTable(cnn);
            cnn.Close();
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


            SqlCommand cmd = new SqlCommand("sp_updateMenu", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@MenuID", SqlDbType.Int).Value = TextBox7.Text;
            cmd.Parameters.Add("@Cost", SqlDbType.Int).Value = TextBox8.Text;
            cmd.Parameters.Add("@MenuType", SqlDbType.NVarChar).Value = TextBox9.Text;


            cmd.ExecuteNonQuery();
            updateTable(cnn);
            cnn.Close();
        }

        private void updateTable(SqlConnection cnn)
        {
            GridView1.DataSourceID = string.Empty;
            DataSet ds = new DataSet();
            string sql = "select * from Menu_Course";

            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}