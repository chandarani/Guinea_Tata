<%@ Page Title="" Language="C#" MasterPageFile="~/TATAMaster.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
<style>
    div.img {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}
    .style4
    {
        width: 87%;
        height: 122px;
    }
    .style5
    {
        width: 104%;
        height: 111px;
    }
    .style6
    {
        width: 105%;
        height: 74px;
    }
    .style7
    {
        height: 69px;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/gallery.png" 
        Height="338px" Width="1506px" />
    <table cellpadding="0" cellspacing="0">
    <tr>
    <td>
        <div class="img">
  <a target="_blank" href="Images/mazda_dealership.jpg">
    <img src="Images/mazda_dealership.jpg" alt="Trolltunga Norway" width="600" height="400"></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CAR SERVICE</div>
</td>
<td rowspan="3" colspan="5" width="500">
        <div id="slide-w" align="center">
 <div id="slider" align="center">
            <a href="#" target="_blank">
                <img src="Images/gmstop-banner1.jpg" alt="Welcome to overallgroup..." 
                height="340" width="100%" />
            </a>
            <img src="Images/ae16-pvbanner.jpg" alt="Directors..." width="100%" 
                height="340" />
            <img src="Images/2016-06-05 (2).png" alt="best service" height="340" 
                width="100%" />
            <img src="Images/13233144_248275825538424_4280097606772813326_n.jpg"" alt="Looking for best car service !!.." height="340" width="100%" />
            <img src="Images/ae16-cvbanner.jpg" alt="TATA MOTORS service.." width="100%" 
                height="340" />
            <img src="Images/contBanner.jpg" alt="" height="340" width="100%" />
        
         <img src="Images/13263950_248276368871703_6457330260240106910_n.jpg" width="100%" 
                height="340" align="middle" />
            <img src="Images/extended-warranty.jpg" alt="best service" height="340" 
                width="100%" />
            <img src="Images/Capture5.PNG"" alt="Looking for best car service !!.." height="340" width="100%" />
            <img src="Images/13312920_248274318871908_7526359441968803849_n.jpg" alt="TATA MOTORS service.." width="100%" 
                height="340" />
            <img src="Images/13327590_247727805593226_2839281024397464213_n (1).jpg" alt="" height="340" width="100%" />
            <img src="Images/13339563_251616658537674_8365526822108830212_n.jpg" alt="" height="340" width="100%" />
            <img src="Images/13344656_251617195204287_4487474039908591850_n.jpg" alt="" height="340" width="100%" /></div>
        
</div>	

</td>
</tr>
<tr>
<td>
<div class="img">
  <a target="_blank" href="Images/images%20(7).jpg">
    <img src="Images/images%20(7).jpg" alt="Forest" width="800" height="600">
  </a>
</div>
</td></tr>

<tr><td>
<div class="img">
  <a target="_blank" href="Images/download.jpg">
    <img src="Images/download.jpg" alt="Northern Lights" width="800" height="600">
  </a>&nbsp;&nbsp; SERVICE CENTER</div>
</td></tr>

<tr><td>
<div class="img">
  <a target="_blank" href="Images/a7bb8e2847a1df1567d1784165ec214d.jpg">
    <img src="Images/a7bb8e2847a1df1567d1784165ec214d.jpg" alt="Mountains" 
        width="800" height="600">
  </a>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp; EXPERTS CARE</div>
</td>
<td>
<div class="img">
  <a target="_blank" href="Images/15-large.jpg">
    <img src="Images/15-large.jpg" alt="Northern Lights" width="800" height="600">
  </a>
    <br />
&nbsp;&nbsp; SERVICE WITH CARE<br />
    </div>
</td>
<td>
<div class="img">
  <a target="_blank" href="Images/625x300_61391427840.jpg">
    <img src="Images/625x300_61391427840.jpg" alt="Northern Lights" width="800" 
        height="600" class="style5">
  </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRESENTNG&nbsp;&nbsp;&nbsp; </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</td>

<td>
<div class="img">
  <a target="_blank" 
        href="Images/tata-osprey-compact-suv-unveiling-auto-expo-2016-pic-image-photo-zigwheels-m1_720x540.jpg">
    <img src="Images/tata-osprey-compact-suv-unveiling-auto-expo-2016-pic-image-photo-zigwheels-m1_720x540.jpg" 
        alt="Northern Lights" width="800" height="600" class="style4">
  </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRESENTNG&nbsp;&nbsp;&nbsp; </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</td>
<td>
<div class="img" style="height: 107px">
  <a target="_blank" href="Images/banner1.jpg">
    <img src="Images/banner1.jpg" alt="Northern Lights" width="800" height="600">
  </a>&nbsp;&nbsp; SERVICE CENTER<br />
    <br />
    </div>
</td>
<td>
<div class="img" style="height: 89px">
  <a target="_blank" href="Images/d2f3bb7ba176195a4396395047a36db0.jpg">
    <img src="Images/d2f3bb7ba176195a4396395047a36db0.jpg" alt="Northern Lights" 
        class="style6">
  </a>&nbsp;&nbsp; SERVICE CENTER<br />
    <br />
    </div>
</td>
</tr>
</table>
 <table cellpadding="0" cellspacing="0">
 <tr><td align="justify" colspan="8">
     <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/2016-06-05 (8).png" 
         Width="503px" /></td>
 </tr>
    <tr>
    <td>
        <div class="img">
  <a target="_blank" href="Images/13344656_251617195204287_4487474039908591850_n.jpg">
    <img src="Images/13344656_251617195204287_4487474039908591850_n.jpg" alt="GO GREEN" width="800" height="600"></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Click here to view</div>
</td>
 <td>
        <div class="img">
  <a target="_blank" href="Images/13327590_247727805593226_2839281024397464213_n (1).jpg">
    <img src="Images/13327590_247727805593226_2839281024397464213_n (1).jpg" width="800" height="600" alt="MAIN OFFICE"></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Click here to view</div>
</td>
 <td>
        <div class="img">
  <a target="_blank" href="Images/13315277_251617198537620_4905830109259211296_n.jpg">
    <img src="Images/13315277_251617198537620_4905830109259211296_n.jpg" alt="GO GREEN" width="800" height="600"></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Click here to view</div>
</td>
 <td>
        <div class="img">
  <a target="_blank" href="Images/13312920_248274318871908_7526359441968803849_n.jpg">
    <img src="Images/13312920_248274318871908_7526359441968803849_n.jpg" alt="GO GREEN" 
                width="800" class="style7"></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Click here to view</div>
</td>
 <td>
        <div class="img">
  <a target="_blank" href="Images/13307343_251617185204288_4994848918085869471_n.jpg">
    <img src="Images/13307343_251617185204288_4994848918085869471_n.jpg" alt="GO GREEN" width="800" height="600"></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Click here to view&nbsp; </div>
</td>
 <td>
        <div class="img">
  <a target="_blank" href="Images/13263950_248276368871703_6457330260240106910_n.jpg">
    <img src="Images/13263950_248276368871703_6457330260240106910_n.jpg" width="800" height="600"></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Click here to view</div>
</td>
 <td>
        <div class="img">
  <a target="_blank" href="Images/13233144_248275825538424_4280097606772813326_n.jpg">
    <img src="Images/13233144_248275825538424_4280097606772813326_n.jpg" width="800" height="600"></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Click here to view</div>
</td>
 <td>
        <div class="img">
  <a target="_blank" href="Images/13327590_247727805593226_2839281024397464213_n.jpg">
    <img src="Images/13327590_247727805593226_2839281024397464213_n.jpg" width="800" height="600"></a><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Click here to view</div>
</td>
    </table>
</asp:Content>

