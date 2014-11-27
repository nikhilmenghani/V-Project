using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class clientlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_signin_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString() == "Client Login")
        {
            cmd.Parameters.Clear();
            con.Open();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count(*) from clientregi where client_email='" + txt_cid.Text + "' and client_pw='" + txt_pw.Text + "' ";

            int n = Convert.ToInt32(cmd.ExecuteScalar());

            if (n == 1)
            {
                Response.Redirect("clientpanel.aspx");
            }
            else
            {
                lbl_msg.Text = "username & password is not match...";
            }

            con.Close();

        }
        else if (DropDownList1.SelectedItem.ToString() == "Admin Login")
        {
            cmd1.Parameters.Clear();
            con.Open();
            cmd1.Connection = con;
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select count(*) from admin where username='" + txt_cid.Text + "' and password='" + txt_pw.Text + "' ";

            int n = Convert.ToInt32(cmd1.ExecuteScalar());

            if (n == 1)
            {
                Response.Redirect("adminhome.aspx");
            }
            else
            {
                lbl_msg.Text = "username & password is not match...";
            }

            con.Close();

        }
    }
    
}