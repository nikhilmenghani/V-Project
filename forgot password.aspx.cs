using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class forgot_password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        cmd.Parameters.Clear();
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select count (*) from clientregi where client_email = '" + txt_eid.Text + "'and client_pan='" + txt_pan.Text + "'";

        int n = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        if (n == 1)
        {
            cmd1.Parameters.Clear();
            con.Open();
            cmd1.Connection = con;
            cmd1.CommandType = CommandType.Text;

            cmd1.CommandText = "select client_pw from clientregi where client_email = '" + txt_eid.Text + "'and client_pan='" + txt_pan.Text + "' ";
            string pwd = cmd1.ExecuteScalar().ToString();
            con.Close();
            label_pw.Text = pwd;


        }
        else
        {
            Response.Write("Username doesnot exists or PAN number does not match");
        }
    }
}