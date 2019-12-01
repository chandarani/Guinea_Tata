<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminTATA.master" AutoEventWireup="true" CodeFile="au_product.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            font-family: "Arial Black";
        }
        .style5
        {
            font-family: "Arial Black";
            width: 642px;
        }
        .style6
        {
            width: 642px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form name="f7" action="#" method="post">
<div>
    <asp:Panel ID="Panel1" runat="server">
    <table  width="100%" align="center">
<tr><td colspan="2" align="center" bgcolor="#CCCCCC"><br /><h1>UPDATE PRODUCT DETAILS</h1><br /></td></tr>
<tr><td></td><td></td></tr>
<tr>
    <td align="center" class="style5" >Product Id</td>
    <td >
        <asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged1" Width="241px" AutoPostBack="true"> 
        </asp:DropDownList>
    </td>
</tr>
<tr>
    <td align="center" class="style5" >Product Type</td>
    <td >
        <asp:TextBox ID="txtordtype" runat="server" Width="240"></asp:TextBox></td>
</tr>
<tr>
    <td align="center" class="style5">Product Name</td>
    <td >
        <asp:TextBox ID="txtoname" runat="server" Width="240"></asp:TextBox></td>
</tr>
<tr>
    <td align="center" class="style5" >Amount</td>
    <td >
        <asp:TextBox ID="txtamount" runat="server" Width="240"></asp:TextBox></td>
</tr>
<tr>
    <td align="center" class="style6" ></td>
    <td >
        &nbsp;</td>
</tr>
<tr><td colspan="2"></td></tr>
</table>
    </asp:Panel>
<table>
<tr><td colspan="2">
    <asp:Button ID="update_personal" runat="server" Text="UPDATE" 
        style="margin-left:350px" Height="40px" CssClass="style4" Width="117px" 
        onclick="update_personal_Click" />
    <asp:Button ID="view" runat="server" Text="DISPLAY ALL DETAILS"  
        style="margin-left:250px" Height="40px" CssClass="style4" Width="212px" 
        onclick="view_Click"/>
</td></tr><tr><td colspan="2"></td></tr>

</table>
<table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:GridView ID="GridView1" runat="server">
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

