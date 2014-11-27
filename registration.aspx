<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td class="style6" colspan="2">
                <strong>Client Registration</strong></td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Client ID</td>
            <td class="style4" style="width: 592px">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2" colspan="2">
                <strong>Client Details</strong></td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Client Name</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_client" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Address</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_add" runat="server" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Contact Number</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_cno" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Email ID</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_ceid" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Password</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_pw" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Confirm Password</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_cpw" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="cv_pw" runat="server" ControlToCompare="txt_cpw" 
                    ControlToValidate="txt_pw" ErrorMessage="not match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                PAN NO</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_pan" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2" colspan="2">
                <strong>Company Details</strong></td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Company Name</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_cmp" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Company Address</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_cadd" runat="server" Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                City</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_city" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                State</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_state" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Country</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_country" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Postal Code</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_code" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Contct Number</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_cmpno" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Fax Number</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_fax" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                Email Id</td>
            <td class="style4" style="width: 592px">
                <asp:TextBox ID="txt_eid" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" style="width: 802px">
                &nbsp;</td>
            <td class="style4" style="width: 592px">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style5" colspan="2">
                <asp:Button ID="btn_submit" runat="server" onclick="btn_submit_Click" 
                    Text="Submit" Width="86px" />
            </td>
        </tr>
    </table>
</asp:Content>


