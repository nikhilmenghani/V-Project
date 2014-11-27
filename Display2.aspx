<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="Display2.aspx.cs" Inherits="Default3" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" style="margin-left: 0px; margin-right: 76px" 
        >
        <ItemTemplate>
            <table align="right">
                <tr>
                    <td align="center" class="style9" colspan="2">
                        <strong><span class="style11">Purchase Order Details Of&nbsp; </span>
                        <asp:Label ID="idLabel0" runat="server" CssClass="style11" 
                            Text='<%# Eval("id") %>' />
                        &nbsp;</strong></td>
                </tr>
                <tr>
                    <td class="style17" style="width: 157px">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style17" style="width: 157px">
                        PO Number</td>
                    <td class="style8">
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style17" style="width: 157px">
                        Company Name</td>
                    <td class="style8">
                        <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style17" style="width: 157px">
                        Company Address</td>
                    <td class="style8">
                        <asp:Label ID="caddLabel" runat="server" Text='<%# Eval("cadd") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style17" style="width: 157px">
                        Contact Person</td>
                    <td class="style8">
                        <asp:Label ID="cpersonLabel" runat="server" Text='<%# Eval("cperson") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style15" style="width: 157px">
                        Contact Person Designation</td>
                    <td class="style16">
                        <asp:Label ID="cpdesLabel" runat="server" Text='<%# Eval("cpdes") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style17" style="width: 157px">
                        PO Type</td>
                    <td class="style8">
                        <asp:Label ID="potypeLabel" runat="server" Text='<%# Eval("potype") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style17" style="width: 157px">
                        Quantity</td>
                    <td class="style8">
                        <asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style17" style="width: 157px">
                        Production Duration</td>
                    <td class="style8">
                        <asp:Label ID="pdurLabel" runat="server" Text='<%# Eval("pdur") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style17" style="width: 157px">
                        Product Description</td>
                    <td class="style8">
                        <asp:Label ID="pdesLabel" runat="server" Text='<%# Eval("pdes") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style17" style="width: 157px">
                        Document Image</td>
                    <td class="style8">
                        <asp:Image ID="Image2" runat="server" Height="188px" 
                            ImageUrl='<%# Eval("doc") %>' Width="231px" />
                    </td>
                </tr>
                <tr>
                    <td class="style17" style="width: 157px">
                        Remaining Quanity</td>
                    <td class="style8">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Remain_qnty") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style17" style="width: 157px">
                        status</td>
                    <td class="style8">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style17" style="width: 157px">
                        &nbsp;</td>
                    <td align="center" class="style8">
                        <asp:Button ID="btn_proceed" runat="server" 
                            Text="Proceed" onclick="btn_proceed_Click1" />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style17" colspan="2">
                        <asp:Label ID="lbl_msg" runat="server" style="color: #0033CC"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style12" colspan="2">
                        <asp:Panel ID="Panel1" runat="server" Visible="False">
                            <table class="style13">
                                <tr>
                                    <td align="center" colspan="2">
                                        Create Jobcard
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Job Card ID</td>
                                    <td>
                                        <asp:TextBox ID="txt_jid" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Quantity</td>
                                    <td>
                                        <asp:TextBox ID="txt_qty" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Date</td>
                                    <td>
                                        <eo:DatePicker ID="DatePicker1" runat="server" DisabledDates="" 
                                            SelectedDates="">
                                        </eo:DatePicker>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:Button ID="btn_createjc" runat="server" onclick="btn_createjc_Click" 
                                            Text="Create Jobcard" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
<br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs %>" 
        SelectCommand="SELECT * FROM [po] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>



