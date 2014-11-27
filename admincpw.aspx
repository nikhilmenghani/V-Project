<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="admincpw.aspx.cs" Inherits="admincpw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td colspan="2">
            Change Password</td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 350px">
            Admin Id</td>
        <td>
            <asp:TextBox ID="txt_aid" runat="server" Width="330px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 350px">
            Old Password</td>
        <td>
            <asp:TextBox ID="txt_op" runat="server" TextMode="Password" Width="330px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 350px">
            New Password</td>
        <td>
            <asp:TextBox ID="txt_np" runat="server" TextMode="Password" Width="330px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Label ID="lbl_msg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Button ID="btn_submit" runat="server" onclick="btn_submit_Click" 
                Text="Submit" Width="157px" />
        </td>
    </tr>
</table>
</asp:Content>

