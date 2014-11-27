<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="Jobcard_list.aspx.cs" Inherits="Jobcard_list" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style5">
    <tr>
        <td>
            <table style="width: 100%">
                <tr>
                    <td>
                        Select Purchase Order<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:cs %>" 
                SelectCommand="SELECT [id] FROM [po] WHERE ([status] = @status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                    </td>
                    <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="id" 
                DataValueField="id">
            </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Select JOBCARD
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:cs %>" 
                SelectCommand="SELECT [jcid] FROM [jobcard] WHERE ([poid] = @poid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="poid" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="jcid" 
                DataValueField="jcid">
            </asp:DropDownList>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="jcid" 
                DataSourceID="SqlDataSource2" RepeatColumns="3" Width="553px">
                <ItemTemplate>
                    <br />
                    <table frame="box">
                        <tr>
                            <td>
                                JobcardId</td>
                            <td>
                                <asp:Label ID="jcidLabel" runat="server" Font-Bold="True" ForeColor="#FF3300" 
                                    Text='<%# Eval("jcid") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Quntity</td>
                            <td>
                                <asp:Label ID="qtyLabel" runat="server" Font-Bold="True" ForeColor="Red" 
                                    Text='<%# Eval("qty") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Date</td>
                            <td>
                                <asp:Label ID="dateLabel" runat="server" ForeColor="Red" 
                                    Text='<%# Eval("date") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Status</td>
                            <td>
                                <asp:Label ID="statusLabel" runat="server" Font-Bold="True" ForeColor="Red" 
                                    Text='<%# Eval("Status") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Button ID="btn_qc" runat="server" onclick="btn_qc_Click" Text="QC" 
                                    ToolTip="Quality Control" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Label ID="lbl_msg" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Panel ID="Panel1" runat="server" Visible="False">
                                    <table class="style5">
                                        <tr>
                                            <td colspan="2" class="style8">
                                                Quality Control</td>
                                        </tr>
                                        <tr>
                                            <td class="style7">
                                                Approve Jobs</td>
                                            <td>
                                                <asp:TextBox ID="txt_app" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style7">
                                                Rejected Jobs</td>
                                            <td>
                                                <asp:TextBox ID="txt_rej" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style7">
                                                QC Manager Name</td>
                                            <td>
                                                <asp:TextBox ID="txt_mname" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style7">
                                                Date</td>
                                            <td>
                                                <eo:DatePicker ID="DatePicker1" runat="server" DisabledDates="" 
                                                    SelectedDates="">
                                                </eo:DatePicker>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="style6" colspan="2">
                                                <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                                                    onclick="btn_submit_Click" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:cs %>" 
                
                SelectCommand="SELECT * FROM [jobcard] WHERE ([jcid] = @jcid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="jcid" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>



