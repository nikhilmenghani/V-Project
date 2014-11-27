using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class JCNo : System.Web.UI.Page
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
        cmd.CommandText = "select count(jcid) from jobcard where poid='" + dd_pon.SelectedValue + "'";
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        lbl_jcn.Text = n.ToString();
        con.Close();

        con.Open();
        cmd1.Connection = con;
        String sts = "Job Completed";
        cmd1.CommandText = "select count(jcid) from jobcard where Status='" + sts + "' and poid='" + dd_pon.SelectedValue + "' ";
        int m = Convert.ToInt32(cmd1.ExecuteScalar());
        lbl_cjc.Text = m.ToString();
        con.Close();

        con.Open();
        cmd2.Connection = con;
        cmd2.CommandType = CommandType.Text;
        String sts1 = "Pending";
        cmd2.CommandText = "select count(jcid) from jobcard where Status='" + sts1 + "' and poid='" + dd_pon.SelectedValue + "' ";
        int s = Convert.ToInt32(cmd2.ExecuteScalar());
        lbl_pjc.Text = s.ToString();
        con.Close();
        if (s == 0)
        {
            lbl_pos.Text = "Purchase Order Completed";
        }
        else
        {
            lbl_pos.Text = "Purchase Order Pending";
        }
        
    }
}