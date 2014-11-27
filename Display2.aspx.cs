using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   
    protected void btn_createjc_Click(object sender, EventArgs e)
    {
        Label lbl_poid = (Label)DataList1.Items[0].FindControl("idLabel");
        TextBox txt_jid1 = (TextBox)DataList1.Items[0].FindControl("txt_jid");
        TextBox txt_qty = (TextBox)DataList1.Items[0].FindControl("txt_qty");
        EO.Web.DatePicker dp = (EO.Web.DatePicker)DataList1.Items[0].FindControl("DatePicker1");
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "insert_jobcard1";

        string status_p = "Pending";
        cmd.Parameters.AddWithValue("@jobid", txt_jid1.Text);
        cmd.Parameters.AddWithValue("@poid", lbl_poid.Text);
        cmd.Parameters.AddWithValue("@qty", txt_qty.Text);
        cmd.Parameters.AddWithValue("@date", dp.SelectedDate.ToString());
        cmd.Parameters.AddWithValue("@status", status_p.ToString());

        cmd.ExecuteNonQuery();
        con.Close();
        Label qty = (Label)DataList1.Items[0].FindControl("qtyLabel");
        Label qty2=(Label)DataList1.Items[0].FindControl("Label2");
        int qty1_p = Convert.ToInt32(qty.Text);
        int updt_qty=Convert.ToInt32(qty2.Text);
        int qty2_j = Convert.ToInt32(txt_qty.Text);
       
        if (updt_qty == qty1_p)
        {
            updt_qty = qty1_p - qty2_j;
        }
        else
        {
            int qty1 = updt_qty - qty2_j;
            updt_qty = qty1;
        }

        if (updt_qty==0)
        {
            string com = "completed";
            con.Open();
            cmd2.Connection = con;
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.CommandText = "update_sts_remng";

            cmd2.Parameters.AddWithValue("@po_id", lbl_poid.Text);
            cmd2.Parameters.AddWithValue("@r_qty", updt_qty.ToString());
            cmd2.Parameters.AddWithValue("@sts", com.ToString());


            cmd2.ExecuteNonQuery();
            con.Close();

        }
        
        con.Open();
        cmd1.Connection = con;
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.CommandText = "update_qnty";

        cmd1.Parameters.AddWithValue("@po_id", lbl_poid.Text);
        cmd1.Parameters.AddWithValue("@qty", updt_qty.ToString());

        
        
        cmd1.ExecuteNonQuery();
        con.Close();
        DataList1.DataBind();

    

    }

    protected void btn_proceed_Click1(object sender, EventArgs e)
    {
        Label qty_updt = (Label)DataList1.Items[0].FindControl("Label1");
        Panel pnl = (Panel)DataList1.Items[0].FindControl("Panel1");
        Label lbl = (Label)DataList1.Items[0].FindControl("lbl_msg");
        if (qty_updt.Text == "completed")
        {
              pnl.Visible = false;
              lbl.Text = "No More quantity Remaining to Create JobCard";
        }
        else
        {
            // Panel pnl = (Panel)DataList1.Items[0].FindControl("Panel1");
            pnl.Visible = true;

            TextBox txt_jid1 = (TextBox)DataList1.Items[0].FindControl("txt_jid");
            TextBox txt_qty = (TextBox)DataList1.Items[0].FindControl("txt_qty");
            EO.Web.DatePicker dp = (EO.Web.DatePicker)DataList1.Items[0].FindControl("DatePicker1");
            //TextBox txt_date = (TextBox)DataList1.Items[0].FindControl("txt_date");

            Label lbl_poid = (Label)DataList1.Items[0].FindControl("idLabel");
            

            con.Open();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select count(*) from jobcard";

            int n = Convert.ToInt32(cmd.ExecuteScalar());
            n = n + 1;
            txt_jid1.Text = "J00" + n.ToString();
            // txt_jid1.Text = lbl_poid.Text;
            con.Close();
        }
    }
}