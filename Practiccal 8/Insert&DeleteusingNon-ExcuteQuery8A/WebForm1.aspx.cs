using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ExecuteNonQuery8A
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=.\\SQLEXPRESS;Initial Catalog=tyit;User=user1;Password=user1");
            SqlCommand cmd = new SqlCommand("insert into emp values(@Id, @Name, @Salary)",con);
            cmd.Parameters.AddWithValue("@Id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Name",TextBox2.Text);
            cmd.Parameters.AddWithValue("@Salary", TextBox1.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Inserted Succesfully");
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=.\\SQLEXPRESS;Initial Catalog=tyit;User=user1;Password=user1");
            SqlCommand cmd = new SqlCommand("Delete from emp where Id=@Id)", con);
            cmd.Parameters.AddWithValue("@Id", TextBox1.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data Dleted!");
            con.Close();
        }

    }
}