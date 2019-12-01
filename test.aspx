<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
  <title>GridView Crud (Select Insert Edit Update Delete) Operations  in ASP.Net</title>
<style type="text/css">
.GridviewDiv {font-size: 100%; font-family: 'Lucida Grande', 'Lucida Sans Unicode', Verdana, Arial,Helevetica, sans-serif; color: #303933;}
.headerstyle
{
color:#FFFFFF;border-right-color:#abb079;border-bottom-color:#abb079;background-color:#df5015;padding:0.5em 0.5em 0.5em 0.5em;text-align:center;
}
</style>
</head>
<body>
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<div class="GridviewDiv">
<%--<asp:GridView  ID="gvDetails" ShowFooter="true" runat="server" AllowPaging="true" PageSize="10" AutoGenerateColumns="false"  OnPageIndexChanging="gvDetails_PageIndexChanging"OnRowCancelingEdit="gvDetails_RowCancelingEdit"
OnRowEditing="gvDetails_RowEditing" OnRowUpdating="gvDetails_RowUpdating"  OnRowDeleting="gvDetails_RowDeleting" OnRowCommand ="gvDetails_RowCommand">
</asp:GridView>--%>

    <asp:GridView ID="GridView1" runat="server"  ShowFooter="true"
        AllowPaging="true" PageSize="10" AutoGenerateColumns="false" 
        onpageindexchanging="GridView1_PageIndexChanging" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
        onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
        onselectedindexchanged="GridView1_SelectedIndexChanged"  >
   <HeaderStyle CssClass="headerstyle" />
    <Columns>
    <asp:TemplateField HeaderText="Sl.No.">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblID" runat="server" Text="<%# ((GridViewRow)Container).RowIndex + 1%>"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

<asp:BoundField DataField="job_card_no" HeaderText="Product Id" ReadOnly="true" />
<asp:TemplateField HeaderText="Product Name">
<ItemTemplate>
<asp:Label ID="lblProductname" runat="server" Text='<%# Eval("amount")%>'/>
</ItemTemplate>
<EditItemTemplate>
<asp:TextBox ID="txtProductname" runat="server" Text='<%# Eval("amount")%>'/>
</EditItemTemplate>
<FooterTemplate>
    
<asp:TextBox ID="txtpname" runat="server" />
</FooterTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText = "Price">
<ItemTemplate>
<asp:Label ID="lblPrice" runat="server" Text='<%# Eval("quantity")%>'></asp:Label>
</ItemTemplate>
<EditItemTemplate>
<asp:TextBox ID="txtProductprice" runat="server" Text='<%# Eval("quantity")%>'/>
</EditItemTemplate>
<FooterTemplate>
<asp:TextBox ID="txtprice" runat="server" />
<asp:Button ID="btnAdd" CommandName="AddNew" runat="server" Text="Add" />
</FooterTemplate>
</asp:TemplateField>
<asp:CommandField ShowEditButton="True" ShowDeleteButton="true" />
</Columns>
    </asp:GridView>


<asp:Label ID="lblresult" runat="server"></asp:Label></div>
    </form>
</body>
</html>







