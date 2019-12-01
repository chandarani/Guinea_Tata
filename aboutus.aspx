<%@ Page Title="" Language="C#" MasterPageFile="~/TATAMaster.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            margin-right: 0px;
        }
        .style5
        {
            margin-right: 21px;
        }
        .style6
        {
            width: 250px;
            height: 447px;
        }
        .style7
        {
            width: 72px;
        }
        .style8
        {
            width: 1253px;
        }
    .style9
    {
        margin-right: 21px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr><td align="center">
        <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/images (4)1.jpg" 
            Height="140px" Width="888px" />
    &nbsp;&nbsp;
     <td rowspan="2" class="style7">
        <marquee direction="down" class="style6"><asp:Image ID="Image4" runat="server" ImageUrl="~/Images/Capture81.png" /></marquee></td>
    </td></tr>
<tr>
    <td class="style8"> 
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Capture 8.PNG" 
        CssClass="style9" Width="1101px" Height="394px" /> 

   </td> 
</tr>
<tr><td colspan="2">
     &nbsp;<asp:Image ID="Image9" runat="server" 
         ImageUrl="~/Images/2016-06-03 (37).png" />
     <br />
     <asp:Image ID="Image10" runat="server" 
         ImageUrl="~/Images/2016-06-03 (38).png" />
     <br />
     <asp:Image ID="Image11" runat="server" 
         ImageUrl="~/Images/2016-06-03 (39).png" />
     <br />
     
 </td></tr>   
 <tr><td colspan="2">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/Capture24.PNG" />
 </td></tr>   

   <tr><td colspan="2">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/Capture61.PNG" />
 </td></tr>   

</table>
   
</asp:Content>

