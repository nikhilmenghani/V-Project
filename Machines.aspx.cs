using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Machines : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();
    SqlCommand cmd3 = new SqlCommand();
    SqlCommand cmd4 = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select count(*) from route";

        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n = n + 1;
        lbl_no.Text = "M00" + n.ToString();
        con.Close();

    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        
       
       
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select mc1 from machine where route='" + DropDownList1.SelectedValue + "'";
        Panel1.Visible = true;
        lbl_mc1.Text = cmd.ExecuteScalar().ToString();
        Panel4.Visible = true;
        lbl_msg1.Text = "Pending";
        con.Close();
    }
    protected void btn_ok1_Click(object sender, EventArgs e)
    {

        Panel2.Visible = true;
        con.Open();
        cmd1.Connection = con;
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select mc2 from machine where route='" + DropDownList1.SelectedValue + "'";
        lbl_mc2.Text = cmd1.ExecuteScalar().ToString();       
        lbl_msg1.Text = "Job Completed";
        Panel5.Visible = true;
        lbl_msg2.Text = "Pending";
        con.Close();

    }
    protected void btn_mc2_Click(object sender, EventArgs e)
    {

        Panel3.Visible = true;
        con.Open();
        cmd2.Connection = con;
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "select mc3 from machine where route='" + DropDownList1.SelectedValue + "'";
        lbl_mc3.Text = cmd2.ExecuteScalar().ToString();
        
        lbl_msg2.Text = "Job Completed";
        Panel6.Visible = true;
        lbl_msg3.Text = "Pending";
        con.Close();
    }
    protected void btn_ok3_Click(object sender, EventArgs e)
    {
        
        lbl_msg3.Text = "Job Completed";
    }
    protected void btn_proceed_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd3.Connection = con;
        cmd3.CommandType = CommandType.StoredProcedure;
        cmd3.CommandText = "insert_route1";

        cmd3.Parameters.AddWithValue("@id", lbl_no.Text);
        cmd3.Parameters.AddWithValue("@route", DropDownList1.SelectedValue);
        cmd3.Parameters.AddWithValue("@mc1", lbl_mc1.Text);
        cmd3.Parameters.AddWithValue("@sts1", lbl_msg1.Text);
        cmd3.Parameters.AddWithValue("@mc2", lbl_mc2.Text);
        cmd3.Parameters.AddWithValue("@sts2", lbl_msg2.Text);
        cmd3.Parameters.AddWithValue("@mc3", lbl_mc3.Text);
        cmd3.Parameters.AddWithValue("@sts3", lbl_msg3.Text);
        string sts = "Job Completed";
        cmd3.Parameters.AddWithValue("@status", sts.ToString());
        cmd3.ExecuteNonQuery();
        con.Close();

    }
    
}