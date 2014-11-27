<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="PO.aspx.cs" Inherits="PO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 434px; width: 816px" align="center">
    <tr>
        <td class="style7" style="width: 355px">
            Purchase Order Number</td>
        <td class="style8">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style7" style="width: 355px">
            Company Name</td>
        <td class="style8">
            <asp:TextBox ID="txt_cname" runat="server" Width="450px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7" style="width: 355px">
            Company Address</td>
        <td class="style8">
            <asp:TextBox ID="txt_cadd" runat="server" Width="450px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7" style="width: 355px">
            Contact Person Name</td>
        <td class="style8">
            <asp:TextBox ID="txt_cpn" runat="server" Width="450px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7" style="width: 355px">
            Contact Person Designation</td>
        <td class="style8">
            <asp:TextBox ID="txt_cpd" runat="server" Width="450px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7" style="width: 355px">
            PO Type</td>
        <td class="style8">
            <asp:DropDownList ID="dd_pot" runat="server" Width="450px" Height="20px">
                <asp:ListItem>Labour</asp:ListItem>
                <asp:ListItem>With Material</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style7" style="width: 355px">
            Quantity</td>
        <td class="style8">
            <asp:TextBox ID="txt_qty" runat="server" Width="450px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7" style="width: 355px">
            Production Duration</td>
        <td class="style8">
            <asp:TextBox ID="txt_dur" runat="server" Width="450px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7" style="width: 355px">
            Product Description</td>
        <td class="style8">
            <asp:TextBox ID="txt_pdes" runat="server" Width="450px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7" style="width: 355px">
            Documents</td>
        <td class="style8">
            <asp:FileUpload ID="fu_doc" runat="server" Width="450px" />
        </td>
    </tr>
    <tr>
        <td class="style7" style="width: 355px">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="style6" colspan="2">
            <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                onclick="btn_submit_Click" Width="127px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button 
                ID="btn_upd" runat="server" onclick="btn_upd_Click" Text="Update " 
                Width="127px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_PO" runat="server" onclick="btn_PO_Click" 
                Text="Show PO Details" />
        </td>
    </tr>
</table>
</asp:Content>


