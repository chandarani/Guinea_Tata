<%@ Page Title="" Language="C#" MasterPageFile="~/TATAMaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    <style type="text/css">
        .style9
        {
            font-family: "Arial Black";
        }
        .style10
        {
            font-family: "Arial Black";
            font-size: large;
        }
        .style11
        {
            font-family: "Arial Black";
            font-size: x-large;
        }
        .style12
        {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="id5" class="style15" style="background-image: url('Images/bg.jpg')">
<br /><br /><br />
<form name="f2" method="post" action="#">
<table width=100% border="0" class="style13">
    <tr><td class="style10">&nbsp;&nbsp; <span class="style4"><span 
            class="style11"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Reference No</span>&nbsp;
    <asp:TextBox ID="txtcust" runat="server" Height="39px"  Width="258px" 
            ontextchanged="txtcust_TextChanged"></asp:TextBox> </span></td>
        
           &nbsp;&nbsp; 
    </tr>
    <tr>
        <td class="style11"><span class="style4"><span 
            class="style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>&nbsp;&nbsp;<span class="style4"><span 
            class="style11"> Customer Name&nbsp; </span> </span>
            <asp:TextBox 
                ID="txtref" runat="server" Height="39px" 
                Width="258px" CssClass="style12"></asp:TextBox> </td>&nbsp;&nbsp;
        
            &nbsp;&nbsp; 
        </tr>
        <tr>
        <td class="style11"><span class="style4"><span 
            class="style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Date of Birth </span></span>&nbsp;
            <asp:TextBox 
                ID="txtbirth" runat="server" Height="39px" 
                Width="258px" CssClass="style12"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            (eg: 01-jan-0001)</td>&nbsp;&nbsp;
        
            &nbsp;&nbsp; 
        </tr>
       <tr> <td class="style12" >
         <br />

         <br />
           <br />


        
           <asp:Button ID="Button1" runat="server" CssClass="style11" Height="41px" style="margin-left:500px"
               onclick="Button1_Click" Text="LOGIN" Width="113px" ToolTip="LOGIN" />
        
        </td> </tr>
        <tr>
        <td class="style9"> 
            <br />
            <br />
            <br />
            <br />
        <br /><br /><br /></td></tr>
</table>
</form>
</div>
</asp:Content>

