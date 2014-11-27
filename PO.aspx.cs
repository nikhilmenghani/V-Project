using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PO : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlCommand cmd2 = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select count(*) from po";

        int n = Convert.ToInt32(cmd.ExecuteScalar());
        n = n + 1;
        Label1.Text = "P00" + n.ToString();
        con.Close();

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string sts="Pending";
        cmd1.Parameters.Clear();
        con.Open();
        cmd1.Connection = con;
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.CommandText = "insert_po";
        fu_doc.SaveAs(Server.MapPath("~/files/" + fu_doc.FileName));
        cmd1.Parameters.AddWithValue("@id", Label1.Text);
        cmd1.Parameters.AddWithValue("@cname", txt_cname.Text);
        cmd1.Parameters.AddWithValue("@cadd", txt_cadd.Text);
        cmd1.Parameters.AddWithValue("@cperson", txt_cpn.Text);
        cmd1.Parameters.AddWithValue("@cpdes", txt_cpd.Text);
        cmd1.Parameters.AddWithValue("@potype", dd_pot.SelectedValue);
        cmd1.Parameters.AddWithValue("@qty", txt_qty.Text);
        cmd1.Parameters.AddWithValue("@rqty", txt_qty.Text);
        cmd1.Parameters.AddWithValue("@pdur", txt_dur.Text);
        cmd1.Parameters.AddWithValue("@pdes", txt_pdes.Text);
        cmd1.Parameters.AddWithValue("@doc", "~/files/" + fu_doc.FileName);
        cmd1.Parameters.AddWithValue("@status", sts.ToString());
        cmd1.ExecuteNonQuery();
        con.Close();
        Label1.Text="";
        txt_cname.Text="";
        txt_cadd.Text="";
        txt_cpn.Text="";
        txt_cpd.Text="";
        txt_qty.Text="";
        txt_dur.Text="";
        txt_pdes.Text = "";
    }
    protected void btn_PO_Click(object sender, EventArgs e)
    {
        Response.Redirect("Display1.aspx");
    }
    protected void btn_upd_Click(object sender, EventArgs e)
    {
        cmd2.Parameters.Clear();
        con.Open();
        cmd2.Connection = con;
        cmd2.CommandType = CommandType.StoredProcedure;
        cmd2.CommandText = "update_po";

        cmd2.Parameters.AddWithValue("@id", Label1.Text);
        cmd2.Parameters.AddWithValue("@cname", txt_cname.Text);
        cmd2.Parameters.AddWithValue("@cadd", txt_cadd.Text);
        cmd2.Parameters.AddWithValue("@cperson", txt_cpn.Text);
        cmd2.Parameters.AddWithValue("@cpdes", txt_cpd.Text);
        cmd2.Parameters.AddWithValue("@potype", dd_pot.SelectedValue);
        cmd2.Parameters.AddWithValue("@qty", txt_qty.Text);
        cmd2.Parameters.AddWithValue("@pdur", txt_dur.Text);
        cmd2.Parameters.AddWithValue("@pdes", txt_pdes.Text);
        cmd2.Parameters.AddWithValue("@doc", "~/files/" + fu_doc.FileName);
        cmd2.ExecuteNonQuery();
        con.Close();
        Label1.Text = "";
        txt_cname.Text = "";
        txt_cadd.Text = "";
        txt_cpn.Text = "";
        txt_cpd.Text = "";
        txt_qty.Text = "";
        txt_dur.Text = "";
        txt_pdes.Text = "";


    }
}