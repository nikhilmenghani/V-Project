using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Jobcard_list : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();
    SqlCommand cmd3 = new SqlCommand();
    SqlCommand cmd4 = new SqlCommand();
    SqlCommand cmd5 = new SqlCommand();
    SqlCommand cmd6 = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        TextBox txt_app = (TextBox)DataList1.Items[0].FindControl("txt_app");
        TextBox txt_rej = (TextBox)DataList1.Items[0].FindControl("txt_rej");
        TextBox txt_mname = (TextBox)DataList1.Items[0].FindControl("txt_mname");
        Label statusLabel = (Label)DataList1.Items[0].FindControl("statusLabel");
        Label jcidLabel = (Label)DataList1.Items[0].FindControl("jcidLabel");


        EO.Web.DatePicker dp = (EO.Web.DatePicker)DataList1.Items[0].FindControl("DatePicker1");
        cmd.Parameters.Clear();
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "insert_qc";

        cmd.Parameters.AddWithValue("@jcid", jcidLabel.Text);
        cmd.Parameters.AddWithValue("@approve", txt_app.Text);
        cmd.Parameters.AddWithValue("@reject", txt_rej.Text);
        cmd.Parameters.AddWithValue("@mname", txt_mname.Text);
        cmd.Parameters.AddWithValue("@date", dp.SelectedDate.ToString());
        statusLabel.Text = "Job Completed";
        cmd.Parameters.AddWithValue("@status", statusLabel.Text);
        cmd.ExecuteNonQuery();
        con.Close();

        con.Open();
        cmd1.Connection = con;
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.CommandText = "update_jobcard";
        cmd1.Parameters.AddWithValue("@id", jcidLabel.Text);
        cmd1.Parameters.AddWithValue("@status", statusLabel.Text);
        cmd1.ExecuteNonQuery();
        con.Close();
        DataList1.DataBind();

        con.Open();
        cmd2.Connection = con;
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "select count(jcid) from jobcard where poid='" + DropDownList1.SelectedValue + "'";
        int n = Convert.ToInt32(cmd2.ExecuteScalar());

        con.Close();

        con.Open();
        cmd3.Connection = con;
        String sts = "Job Completed";
        cmd3.CommandText = "select count(jcid) from jobcard where Status='" + sts + "' and poid='" + DropDownList1.SelectedValue + "' ";
        int m = Convert.ToInt32(cmd3.ExecuteScalar());
        con.Close();

        con.Open();
        cmd4.Connection = con;
        cmd4.CommandType = CommandType.Text;
        String sts1 = "Pending";
        cmd4.CommandText = "select count(jcid) from jobcard where Status='" + sts1 + "' and poid='" + DropDownList1.SelectedValue + "' ";
        int s = Convert.ToInt32(cmd4.ExecuteScalar());

        con.Close();
        if (s == 0)
        {
            con.Open();
            cmd5.Connection = con;
            cmd5.CommandType = CommandType.Text;
            string updtst = "Completed";
            cmd5.CommandText = "UPDATE  po SET  status ='" + updtst + "'  WHERE   (id ='" + DropDownList1.SelectedValue + "' )";
            cmd5.ExecuteNonQuery();
            con.Close();
        }

    }
    protected void btn_qc_Click(object sender, EventArgs e)
    {
        Label statusLabel = (Label)DataList1.Items[0].FindControl("statusLabel");
        Label lbl_msg = (Label)DataList1.Items[0].FindControl("lbl_msg");
        if (statusLabel.Text != "Job Completed")
        {
            Panel pnl = (Panel)DataList1.Items[0].FindControl("Panel1");
            pnl.Visible = true;
        }
        else
        {
            lbl_msg.Text = "PO Completed";

        }
    }
}
   