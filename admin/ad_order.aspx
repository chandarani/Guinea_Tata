<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminTATA.master" AutoEventWireup="true" CodeFile="ad_order.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-family: "Arial Black";
        }
        .style3
        {
            font-family: "Arial Black";
            width: 569px;
        }
        .style4
        {
            font-family: "Arial Black";
        }
        .style5
        {
            width: 765px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form name="f6" action="#" method="post">
<div>
    <asp:Panel ID="Panel1" runat="server">
    
<table  width="100%" align="center">
<tr><td colspan="2"></td></tr>
<tr><td colspan="2" align="center" bgcolor="#CCCCCC"><br /><h1>PRODUCT DETAILS</h1><br /></td>
</tr>
<tr><td><br /></td></tr>
<%--<tr>
    <td align="center" class="style3">Job Card Number</td>
    <td class="style5">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  
            Width="241px" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
    </td>
</tr>--%>
<tr>
    <td align="center" class="style3">Product Id</td>
    <td class="style5">
        <asp:TextBox ID="txtordn" runat="server" Width="240"></asp:TextBox></td>
</tr>
<tr>
    <td align="center" class="style3">Product Type</td>
    <td class="style5">
        <asp:TextBox ID="txtordtype" runat="server" Width="240"></asp:TextBox></td>
</tr>
<tr>
    <td align="center" class="style3">Product Name</td>
    <td class="style5">
        <asp:TextBox ID="txtoname" runat="server" Width="240"></asp:TextBox></td>
</tr>
<tr>
    <td align="center" class="style3">Amount</td>
    <td class="style5">
        <asp:TextBox ID="txtamount" runat="server" Width="240"></asp:TextBox></td>
</tr>
<tr>
    <td align="center" class="style3">&nbsp;</td>
    <td class="style5">
        &nbsp;</td>
</tr>
<tr>
    <td align="center" class="style3">&nbsp;</td>
    <td class="style5">
        &nbsp;</td>
</tr>
<tr><td colspan="2"></td></tr>
</table></asp:Panel>
<table>
<tr><td colspan="2">
    <asp:Button ID="Button1" runat="server" CssClass="style4" 
        style="margin-left:250px" Text="SAVE" 
        Width="121px" onclick="Button1_Click" Height="30px" />
   
    <asp:Button ID="Button2" runat="server" CssClass="style4" Text="CLEAR" style="margin-left:150px"
        Width="133px" onclick="Button2_Click" Height="30px" />
    
    <asp:Button ID="show" runat="server" CssClass="style4" Height="30px" style="margin-left:150px" 
        Text="DISPLAY ALL" onclick="show_Click" />
    </td></tr><tr><td colspan="2"></td></tr>

</table>
<table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" >
            <Columns>
                <asp:TemplateField HeaderText="PRODUCT NO">
                      <ItemTemplate>
                      <asp:Label ID="product_no" runat="server" Text='<%# Eval("product_no") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PRODUCT TYPE">
                <ItemTemplate>
                <asp:Label ID="product_type" runat="server" Text='<%# Eval("product_type") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PRODUCT NAME">
                <ItemTemplate>
                <asp:Label ID="product_name" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="AMOUNT">
                <ItemTemplate>
                <asp:Label ID="amount" runat="server" Text='<%# Eval("amount") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
    </asp:Panel>
</table>
</div>
</form>
</asp:Content>

