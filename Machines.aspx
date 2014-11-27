<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Machines.aspx.cs" Inherits="Machines" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 191px;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
        }
        .style5
        {
            width: 259px;
        }
        .style6
        {
            width: 260px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <table>
            <tr>
                <td class="style4" align="center" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="route" HeaderText="route" SortExpression="route" />
                            <asp:BoundField DataField="mc1" HeaderText="mc1" SortExpression="mc1" />
                            <asp:BoundField DataField="mc2" HeaderText="mc2" SortExpression="mc2" />
                            <asp:BoundField DataField="mc3" HeaderText="mc3" SortExpression="mc3" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:cs %>" 
                        SelectCommand="SELECT * FROM [machine]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td align="center" class="style6">
                    &nbsp;</td>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Sequence Number</td>
                <td align="center" class="style6">
                    <asp:Label ID="lbl_no" runat="server"></asp:Label>
                </td>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Select Route For Processing</td>
                <td align="center" class="style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="route" DataValueField="route" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged1" Width="200px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:cs %>" 
                        SelectCommand="SELECT [route] FROM [machine]"></asp:SqlDataSource>
                </td>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td align="center" class="style6">
                    &nbsp;</td>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    Machine 1:</td>
                <td align="center" class="style6">
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <table class="style3">
                            <tr>
                                <td align="center">
                                    <asp:Label ID="lbl_mc1" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Button ID="btn_ok1" runat="server" onclick="btn_ok1_Click" Text="OK" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td align="center" class="style2">
                    <asp:Panel ID="Panel4" runat="server" Visible="False">
                        <asp:Label ID="lbl_msg1" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Machine 2:</td>
                <td align="center" class="style6">
                    <asp:Panel ID="Panel2" runat="server" Visible="False">
                        <table class="style3">
                            <tr>
                                <td align="center">
                                    <asp:Label ID="lbl_mc2" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Button ID="btn_mc2" runat="server" onclick="btn_mc2_Click" Text="OK" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td align="center" class="style2">
                    <asp:Panel ID="Panel5" runat="server" Visible="False">
                        <asp:Label ID="lbl_msg2" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Machine 3:</td>
                <td align="center" class="style6">
                    <asp:Panel ID="Panel3" runat="server" Visible="False">
                        <table class="style3">
                            <tr>
                                <td align="center">
                                    <asp:Label ID="lbl_mc3" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Button ID="btn_ok3" runat="server" onclick="btn_ok3_Click" Text="OK" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td align="center" class="style2">
                    <asp:Panel ID="Panel6" runat="server" Visible="False">
                        <asp:Label ID="lbl_msg3" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td align="center" class="style6">
                    &nbsp;</td>
                <td align="center" class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style1" colspan="2">
                    <asp:Button ID="btn_proceed" runat="server" onclick="btn_proceed_Click" 
                        Text="Proceed" />
                </td>
                <td align="center" class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style1" colspan="3">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource3">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                            <asp:BoundField DataField="route" HeaderText="route" SortExpression="route" />
                            <asp:BoundField DataField="mc1" HeaderText="mc1" SortExpression="mc1" />
                            <asp:BoundField DataField="sts1" HeaderText="sts1" SortExpression="sts1" />
                            <asp:BoundField DataField="mc2" HeaderText="mc2" SortExpression="mc2" />
                            <asp:BoundField DataField="sts2" HeaderText="sts2" SortExpression="sts2" />
                            <asp:BoundField DataField="mc3" HeaderText="mc3" SortExpression="mc3" />
                            <asp:BoundField DataField="sts3" HeaderText="sts3" SortExpression="sts3" />
                            <asp:BoundField DataField="status" HeaderText="status" 
                                SortExpression="status" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:cs %>" 
                        SelectCommand="SELECT * FROM [route]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
