<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="Display1.aspx.cs" Inherits="Display1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
 <tr>
 <h3><b>PO NUMBER                   |          COMPANYNAME         |           DURATION</b></h3>
 </tr>
 <tr>
  <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            &nbsp;<table style="width: 525px">
                <tr>
                    <td>
                    <a href="Display2.aspx?id=<%# Eval("id") %>">
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' /></a>
                    </td>
                    <td align="center" class="style5">
                        <br />
                        <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:Label ID="pdurLabel" runat="server" Text='<%# Eval("pdur") %>' />
                    </td>
                </tr>
            </table>
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
 </tr>
 </table>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs %>" 
        SelectCommand="SELECT [id], [cname], [pdur] FROM [po]"></asp:SqlDataSource>
</asp:Content>


