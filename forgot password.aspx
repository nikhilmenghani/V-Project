<%@ Page Title="" Language="C#" MasterPageFile="~/clintemasterpage.master" AutoEventWireup="true" CodeFile="forgot password.aspx.cs" Inherits="forgot_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td class="style4" style="width: 245px">
                Email ID</td>
            <td class="style2">
                <asp:TextBox ID="txt_eid" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="width: 245px">
                PAN NO</td>
            <td class="style2">
                <asp:TextBox ID="txt_pan" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="width: 245px">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style3" colspan="2">
                <asp:Button ID="btn_submit" runat="server" onclick="btn_submit_Click" 
                    Text="Submit" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="style4" style="width: 245px">
                Your Password is</td>
            <td class="style2">
                <asp:Label ID="label_pw" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>


   