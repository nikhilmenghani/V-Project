<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="clientlogin.aspx.cs" Inherits="clientlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                LOGIN</td>
        </tr>
        <tr>
            <td class="style4">
                <strong>User</strong></td>
            <td class="style6">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                     Width="188px" AutoPostBack="True">
                    <asp:ListItem>Client Login</asp:ListItem>
                    <asp:ListItem>Admin Login</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <strong>ID:</strong></td>
            <td class="style3">
                <asp:TextBox ID="txt_cid" runat="server" Width="188px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <strong>Password:</strong></td>
            <td class="style3">
                <asp:TextBox ID="txt_pw" runat="server" Width="188px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="btn_signin" runat="server" Text="Sign In" 
                    onclick="btn_signin_Click" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/forgot password.aspx">Forgot Password????</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style7" align="center" colspan="2">
                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>


