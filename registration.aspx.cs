using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select count(*) from clientregi";

        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n = n + 1;
        Label1.Text = "C00" + n.ToString();
        con.Close();

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        cmd1.Parameters.Clear();
        con.Open();
        cmd1.Connection = con;
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.CommandText = "insert_client";

        cmd1.Parameters.AddWithValue("@id", Label1.Text);
        cmd1.Parameters.AddWithValue("@clname", txt_client.Text);
        cmd1.Parameters.AddWithValue("@cladd", txt_add.Text);
        cmd1.Parameters.AddWithValue("@clno", txt_cno.Text);
        cmd1.Parameters.AddWithValue("@clemail", txt_ceid.Text);
        cmd1.Parameters.AddWithValue("@clpw", txt_cpw.Text);
        cmd1.Parameters.AddWithValue("@clpan", txt_pan.Text);
        cmd1.Parameters.AddWithValue("@cmpname", txt_cmp.Text);
        cmd1.Parameters.AddWithValue("@cmpadd", txt_cadd.Text);
        cmd1.Parameters.AddWithValue("@city", txt_city.Text);
        cmd1.Parameters.AddWithValue("@state", txt_state.Text);
        cmd1.Parameters.AddWithValue("@country", txt_country.Text);
        cmd1.Parameters.AddWithValue("@code", txt_code.Text);
        cmd1.Parameters.AddWithValue("@cmpno", txt_cmpno.Text);
        cmd1.Parameters.AddWithValue("@fax", txt_fax.Text);
        cmd1.Parameters.AddWithValue("@cmpemail", txt_eid.Text);
        cmd1.ExecuteNonQuery();
        con.Close();
        Label1.Text = "";
        txt_client.Text = "";
        txt_add.Text = "";
        txt_cno.Text = "";
        txt_ceid.Text = "";
        txt_cpw.Text = "";
        txt_pan.Text = "";
        txt_cmp.Text = "";
        txt_cadd.Text = "";
        txt_city.Text = "";
        txt_state.Text = "";
        txt_country.Text = "";
        txt_code.Text = "";
        txt_cmpno.Text = "";
        txt_fax.Text = "";
        txt_eid.Text = "";
    }
    
}