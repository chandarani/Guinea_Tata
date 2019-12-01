<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ad_login.aspx.cs" Inherits="admin_ad_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 257px;
        }
        .style2
        {
            width: 257px;
            font-family: "Arial Black";
            font-size: x-large;
        }
        .style3
        {
            width: 268px;
        }
        .style4
        {
            font-family: "Colonna MT";
            font-size: xx-large;
        }
        .style5
        {
            font-family: "Arial Black";
            font-size: large;
        }
        .style6
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body >
    <form  id="form1" runat="server">
    <div style="background-image: url('../Images/cq5dam.web.1280.1280.jpeg')" >
    <table  cellpadding="10" cellspacing="10" width="600" border="2" align="center"  style="opacity:0.80;">
    <tr><td align= "left" colspan="2" class="style4"><strong><span class="style6">GUINEA Admin Login
        </span> 
        </strong> </td></tr>
    <tr><td align= "center" colspan="2">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/download121.jpg" 
            Height="164px" Width="285px" /></td></tr>
        <tr><td align="center" class="style2">User Name</td>
            <td bgcolor="#CCCCCC" class="style3">
            <asp:TextBox ID="txtname" runat="server" Height="33px" Width="207px"></asp:TextBox></td></tr>
        <tr><td align="center"class="style2">Password</td>
            <td bgcolor="#CCCCCC" class="style3">
            <asp:TextBox ID="txtpass" runat="server" Height="33px" Width="207px" 
                    ontextchanged="txtpass_TextChanged" TextMode="Password"></asp:TextBox></td></tr>
        <tr><td align="right"class="style1">
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                onclick="btnsubmit_Click" CssClass="style5" Height="40px" /></td>
            <td  class="style3">
                <asp:Button ID="btnclear" runat="server" Text="Clear" 
                    onclick="btnclear_Click" CssClass="style5" /></td></tr>
            
    </table>
    </div>
    </form>
</body>
</html>
