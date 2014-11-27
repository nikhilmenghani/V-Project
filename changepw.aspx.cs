using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class changepw : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    int n = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_change_Click(object sender, EventArgs e)
    {
        cmd.Parameters.Clear();
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT  count(*)FROM  clientregi WHERE(client_email = '"+txt_eid.Text+"') AND (client_pw = '"+txt_op.Text+"')";
        int n=(Convert.ToInt32(cmd.ExecuteScalar()));
        con.Close();
        
        if (n == 1)
        {
            cmd1.Parameters.Clear();
            con.Open();
            cmd1.Connection = con;
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.CommandText = "update_password";
            cmd1.Parameters.AddWithValue("@email", txt_eid.Text);
            cmd1.Parameters.AddWithValue("@pw", txt_np.Text);
            cmd1.ExecuteNonQuery();
            label_msg.Text="Password successfully updated";
            con.Close();


        }
        else
        {
            label_msg.Text="Failed to update..check username or password";
        }

    }
}