<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="changepw.aspx.cs" Inherits="changepw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
    <tr>
        <td class="style4">
            Email Id</td>
        <td class="style2">
            <asp:TextBox ID="txt_eid" runat="server" Width="249px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Old Password</td>
        <td class="style2">
            <asp:TextBox ID="txt_op" runat="server" TextMode="Password" Width="249px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            New Password</td>
        <td class="style2">
            <asp:TextBox ID="txt_np" runat="server" TextMode="Password" Width="249px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="style3" colspan="2">
            <asp:Button ID="btn_change" runat="server" onclick="btn_change_Click" 
                Text="Submit" Width="101px" style="height: 26px" />
        </td>
    </tr>
    <tr>
        <td align="center" class="style3" colspan="2">
            <asp:Label ID="label_msg" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

