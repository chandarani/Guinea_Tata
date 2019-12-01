<%@ Page Title="" Language="C#" MasterPageFile="~/TATAMaster.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
    <style type="text/css">
        .style4
        {
            width: 452px;
            text-align: center;
            height: 47px;
        }
        .style9
        {
            color: cyan;
            width: 1623px;
            height: 47px;
            text-align: center;
        }
        .style10
        {
            color: #ffffff;
            font-size: large;
            font-family: "Comic Sans MS";
            text-align: right;
            width: 1623px;
            height: 140px;
        }
        .style11
        {
            width: 341px;
        }
        .style12
        {
            width: 254px;
        }
        .style13
        {
            font-family: Arial;
            font-size: 18px;
            width: 452px;
            text-align: right;
            height: 140px;
        }
        .style14
        {
            width: 1000px;
            height: 140px;
            text-align: right;
        }
        .style16
        {
            color: #FFFFCC;
        }
        .style17
        {
            color: #FFFF66;
        }
        .style18
        {
            font-family: cursive;
        }
        .style19
        {
            width: 1000px;
            height: 47px;
        }
        </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="80%">
<tr>
<td>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/image1.jpg" 
        Width="1350px" />
    <br />
</td>
</tr>
<tr><td align="center">
<div id="slide-w" align="center">
 <div id="slider" align="center">
            <a href="#" target="_blank">
                <img src="Images/gmstop-banner1.jpg" alt="Welcome to overallgroup..." 
                height="340" width="100%" />
            </a>
            <img src="Images/ae16-pvbanner.jpg" alt="Directors..." width="100%" 
                height="340" />
            <img src="Images/extended-warranty.jpg" alt="best service" height="340" 
                width="100%" />
            <img src="Images/Capture5.PNG"" alt="Looking for best car service !!.." height="340" width="100%" />
            <img src="Images/ae16-cvbanner.jpg" alt="TATA MOTORS service.." width="100%" 
                height="340" />
            <img src="Images/contBanner.jpg" alt="" height="340" width="100%" /></div>
        
</div>	

</td></tr>
</table>

<div id="id3"
    
        style="background-image: url('Images/horizonext-bg.jpg'); color: #66FFFF; font-family: 'Arial Black'; font-size: xx-large;">
    <table cellspacing="5">
    <tr>
    <td style="color: #FFFF00; font-family: 'Cooper Black'" class="style4" 
            align="center">
        <br />
&nbsp;&nbsp;GLOBAL&nbsp;&nbsp;FOOTPRINT</td>
        <td style="font-family: 'Cooper Black'; " class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;SUBSIDIARIES</td>
<td class="style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp;&nbsp;<span class="style16">&nbsp;INNOVATION</span></td>
    </tr>
    <tr><td class="style13" >
            <span class="style18">Our logo went international in&nbsp; 1961, 
        <br />
        and we now sell our vehicles in more 
        <br />
        than 50 countries. Our cars, buses<br />
&nbsp;and trucks roll out at 20 locations 
        <br />
        across the world – seven in India and 
        <br />
        the rest in the UK, South Korea, 
        <br />
        Thailand, South Africa and Indonesia.&nbsp;&nbsp;&nbsp;</span>&nbsp;  
    </td>
    <td class="style10" align="left"><span class="style18">We have built a strong global network of 
        <br />
        subsidiaries and associate companies</span>,<br class="style18" />
        <span class="style18">&nbsp;including Jaguar Land Rover<br />
&nbsp;in the UK and
        <br />
        Tata Daewoo in South Korea. Tata Motors<br />
&nbsp;is also engaged in engineering and<br />
&nbsp;automotive solutions. 
        Read More(/about-us/subsidiaries/)</span>
    </td><td class="style14" style="font-family: cursive; font-size: large;">
            <span class="style17">Our innovation efforts have focused on developing auto technologies that<br />
&nbsp;are sustainable as well as suited to the tough conditions of developing economies. Our latest innovation is India’s first turbocharged petrol engine, the Revotron 1.2T engine.</span>
</td>
    </tr>
    <tr><td colspan="3"  height="100"><marquee><img src="Images/download (6).jpg" />&nbsp;&nbsp;&nbsp;&nbsp;
    <img src="Images/download (9).jpg" />&nbsp;&nbsp;&nbsp;&nbsp;<img src="Images/images (4).jpg" />&nbsp;&nbsp;&nbsp;&nbsp;<img src="Images/images (25).jpg" />&nbsp;&nbsp;&nbsp;&nbsp;
    <img src="Images/images (24).jpg" />&nbsp;&nbsp;&nbsp;&nbsp;<img src="Images/images (28).jpg" />&nbsp;&nbsp;&nbsp;&nbsp;<img src="Images/images (57).jpg" />&nbsp;&nbsp;&nbsp;&nbsp;
    <img src="Images/images (62).jpg" />&nbsp;&nbsp;&nbsp;&nbsp;<img src="Images/cb415743-50a0-4a5f-b5d9-6adc60d4a01a.jpg" />&nbsp;&nbsp;&nbsp;&nbsp;</marquee>
    <td class="style12"></td><td class="style11"></td></td>
    </tr>
    </table>
    
       
</div>
<table>
<tr>
<td>
    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/complaint.jpg" 
        Width="1350px" />
</td>
</tr>
<tr>
<td width="1350">
    <asp:Image ID="Image3" runat="server" 
        ImageUrl="~/Images/small_commercial_vehicles.jpg" Width="1350px" />
</td>
</tr>
</table>
</asp:Content>

