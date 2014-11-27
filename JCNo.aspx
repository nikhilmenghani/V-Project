<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="JCNo.aspx.cs" Inherits="JCNo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="style5">
        <tr>
            <td class="style6">
                Purchase Order Number</td>
            <td>
                <asp:DropDownList ID="dd_pon" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="id" DataValueField="id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:cs %>" 
                    SelectCommand="SELECT [id] FROM [po]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Number of Job Cards</td>
            <td>
                <asp:Label ID="lbl_jcn" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Completed Job Cards</td>
            <td>
                <asp:Label ID="lbl_cjc" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Pending Job Cards</td>
            <td>
                <asp:Label ID="lbl_pjc" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Purchase Order Status</td>
            <td>
                <asp:Label ID="lbl_pos" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


