<%@ Page Title="" Language="C#" MasterPageFile="~/TATAMaster.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-family: "Arial Narrow";
            font-size: medium;
        }
        .style6
        {
            margin-right: 4px;
        }
        .style10
        {
            height: 790px;
            margin-top: 0px;
            width: 1397px;
        }
        .style4
        {
            width: 729px;
            margin-left: 106px;
            height: 609px;
            margin-top: 0px;
            margin-right: 92px;
        }
        .style9
        {
            font-family: "Arial Black";
            font-size: larger;
        }
        .style11
        {
            font-family: "Arial Black";
            font-size: x-large;
        }
        .style12
        {
            width: 297px;
        }
        input[type=text]
        {
            border:0px;
            border-bottom:1px solid #00ff00;
                    
                      
        }
        select
        {
            
            border:0px;
            border-bottom:1px solid #00ff00;
                   
        }
        textarea
        {
            border:0px;
            border-bottom:1px solid #00ff00;
                   
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href="/" style="font-family: 'Arial Narrow'">Booking</a><span 
        style="cursor: pointer; font-family: Arial; font-size: medium;"> &gt; </span>Online Service Booking<br />
</br>
</br>
<div style="font-family: 'Bauhaus 93'; color: #0000FF; font-size: x-large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online Service Booking<br />
    <br />
    </div>
    <div style="background-image: url('Images/much-full-car-service-cost_39e0b5ace51ebdb.jpg')" 
        align="left" class="style10">
    <form name="f1" method="post" action="#">
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table border="0" style="font-family: Verdana; opacity:0.80;" 
        class="style4" bgcolor="White">
      <tr><td class="style12"><td></td></td></tr>
      <tr><td class="style12"><td></td></td></tr>
       <tr><td align="center" class="style12"><strong><br /></strong></td></tr>
     <tr>
        <td align="center" class="style12"><strong>Booking Id </strong>
        </td>
         <td>
             <asp:TextBox ID="txtbook" runat="server" Width="208px" ReadOnly="true" 
                 ontextchanged="txtbook_TextChanged" ></asp:TextBox></td>
       </tr>
       <tr>
        <td align="center" class="style12"><strong>Customer Name
            <span style="color : #ff0000;">*</span></strong></td>
        <td>
            <asp:TextBox ID="txtname" runat="server" Width="208px"></asp:TextBox>
        </td>
    </tr>
    <tr>
         <td align="center" class="style12"><strong>Vehicle Type </strong> <span style="color : #ff0000;"><strong>*</strong></span><strong>
             </strong>
        </td>
         <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="208px"
             onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Selected="True">Passenger</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
     <tr>
        <td align="center" class="style12"><strong>Registration Number </strong> <span style="color : #ff0000;"><strong>*</strong></span><strong>
            </strong>
        </td>
        <td>
            <asp:TextBox ID="txtreg" runat="server" Width="208px"></asp:TextBox>  
        &nbsp;&nbsp; <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            (e.g MH01AB1234)</span></td>
     </tr>
     <tr>
        <td align="center" class="style12"><strong>Chasis Number
        </strong>
        </td>
        <td>
            <asp:TextBox ID="txtchasis" runat="server" Width="208px"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td align="center" class="style12"><strong>Model Number
            <span style="color : #ff0000;">*</span></strong></td>
        <td>
            <asp:TextBox ID="txtmodel" runat="server" Width="208px"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td align="center" class="style12"><strong>Company Name
            <span style="color : #ff0000;">*</span></strong></td>
        <td>
            <asp:TextBox ID="txtcomp" runat="server" Width="208px"></asp:TextBox>
        </td>
    </tr>
    
    
    <tr>
        <td align="center" class="style12"><strong>Mobile No.</strong><span style="color : #ff0000;"><strong>*</strong></span></td>
        <td>
            <asp:TextBox ID="txtmob" runat="server" Width="208px" CssClass="style6" MaxLength="10"></asp:TextBox></td>
    </tr>
    <tr>
        <td align="center" class="style12"><strong>Email Id </strong> </td>
        <td>
            <asp:TextBox ID="txtmail" runat="server" Width="208px"></asp:TextBox></td>
    </tr>
    <tr>
        <td align="center" class="style12"><strong>Address </strong> </td>
        <td>
            <asp:TextBox ID="txtadd" runat="server" Width="208px" Height="45px" 
                TextMode="MultiLine"></asp:TextBox>
            </td>
    </tr>
    <tr>
        <td align="center" class="style12"><strong>Date of Birth <span style="color : #ff0000;">*</span></strong></td>
        <td>
            <asp:TextBox ID="txtbirth" runat="server" Width="208px"></asp:TextBox>
             <cc1:CalendarExtender ID="CalendarExtender2" runat="server"  Format="dd-MMM-yyyy" TargetControlID="txtbirth">
                                                                </cc1:CalendarExtender>
                                                                 
        </td>
                                                                 
    </tr>

    
    <tr>
        <td align="center" class="style12"><strong>Service Type </strong> <span style="color : #ff0000;"><strong>*</strong></span></td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="208px" Height="19px" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="center" class="style12"><strong>Booking Date</strong></td>
        <td>
            <asp:TextBox ID="txtdate" runat="server" Width="208px"></asp:TextBox>
            
            <cc1:CalendarExtender ID="CalendarExtender1" runat="server"  Format="dd-MMM-yyyy" TargetControlID="txtdate">
                                                                </cc1:CalendarExtender>
                                                                 
     </td>
    </tr>
    <tr>
        <td align="center" class="style12"><strong>Service Workshop <span style="color : #ff0000;">*</span></strong></td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="style7" 
                Width="208px" Height="19px" 
                onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Patliputra</asp:ListItem>
                <asp:ListItem>Bailey Road</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr><td align="center" class="style12"><strong><br /></strong></td></tr>
     <tr>
        
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" BackColor="White" CssClass="style11" style="margin-left:100px"
                onclick="Button1_Click1" Text="BOOK NOW" Height="45px" Width="180px" />

            <asp:Button ID="Button2" runat="server" style="margin-left:80px"
                CssClass="style9" onclick="Button2_Click" Text="RESET" Height="45px" 
                Width="148px" />
          </td></tr>
    <tr><td align="center" class="style12"><strong><br /></strong></td></tr>
   

 </table>
    <br />
    <br />
 </form></div>
 <br /><br /><br /><br />

</asp:Content>

