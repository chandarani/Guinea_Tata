<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminTATA.master" AutoEventWireup="true" CodeFile="ad_book.aspx.cs" Inherits="admin_Default" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style2
        {
            font-family: "Arial Black";
        }
        .style3
        {
            width: 644px;
        }
                
        .style5
        {
            margin-left: 20px;
            width: 682px;
        }
        .style6
        {
            width: 100%;
        }
        
        .style9
        {
            width: 729px;
            margin-left: 333px;
            height: 609px;
            margin-top: 0px;
            margin-right: 120px;
        }
        input[type=text]
        {
            border:0px;
            border-bottom:1px solid #0000ff;
                    
                      
        }
        select
        {
            
            border:0px;
            border-bottom:1px solid #0000ff;
                   
        }
        textarea
        {
            border:0px;
            border-bottom:1px solid #0000ff;
                   
        }
        .style12
        {
            text-align: justify;
            width: 1194px;
        }
        .style13
        {
            font-family: "Arial Black";
            width: 1194px;
            text-align: justify;
        }
        .style14
        {
            font-family: "Arial Black";
            font-size: large;
        }
        .style15
        {
            width: 955px;
        }
        .style16
        {
            width: 1080px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form name="f1" action="#" method="post" >
    <div >
    <asp:Panel ID="Panel1" runat="server">

<table  class="style6">
<tr><td colspan = "2" align="center" bgcolor="#CCCCCC">
    <br />
    <h1>BOOKING DETAILS</h1>
    
    <br />
    </td></tr>
    <tr><td colspan = "2">
    <br />
    </td></tr>
</table>
<div style="background-image: url('../Images/polygonal-texture-background-vector.jpg')">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="style9" border="0" style=" opacity:0.80;" 
         bgcolor="White">
         <tr><td class="style12" style="clip: rect(auto, auto, auto, auto);"></td></tr>
        <tr>
            <td class="style12" style="clip: rect(auto, auto, auto, auto);" >
                <span class="style2" style="margin-left:25px">Booking Id</span>
            </td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged" Width="240px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style12" >
                <span class="style2"  style="margin-left:25px">Customer Reference Number</span>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtcust" runat="server" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" style="clip: rect(auto, auto, auto, auto);">
                <span  style="margin-left:25px">Customer Name </span><span style="color : #ff0000;" >*</span>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtcname" runat="server" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" style="clip: rect(auto, auto, auto, auto);">
                <span style="margin-left:25px"></span>Vehicle Type
            </td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="240px">
                    <asp:ListItem>passenger</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style13" style="clip: rect(auto, auto, auto, auto);">
                <span style="margin-left:25px">Registration Number <span style="color : #ff0000;">*</span></td>
            <td class="style5">
                <asp:TextBox ID="txtreg" runat="server" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" style="clip: rect(auto, auto, auto, auto);">
                <span style="margin-left:25px">Chasis Number</td>
            <td class="style5">
                <asp:TextBox ID="txtchasis" runat="server" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" style="clip: rect(auto, auto, auto, auto);">
               <span style="margin-left:25px"> Company
            </td>
            <td class="style5">
                <asp:TextBox ID="txtcomp" runat="server" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" style="clip: rect(auto, auto, auto, auto);">
               <span style="margin-left:25px"> Model</td>
            <td class="style5">
                <asp:TextBox ID="txtmodel" runat="server" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" style="clip: rect(auto, auto, auto, auto);">
               <span style="margin-left:25px"> Mobile No. <span style="color : #ff0000;">*</span>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtmob" runat="server" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" style="clip: rect(auto, auto, auto, auto);">
               <span style="margin-left:25px"> Email Id</td>
            <td class="style5">
                <asp:TextBox ID="txtmail" runat="server" Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" style="clip: rect(auto, auto, auto, auto);">
               <span style="margin-left:25px"> Address</td>
            <td class="style5">
                <asp:TextBox ID="txtadd" runat="server" Height="56px" TextMode="MultiLine" 
                    Width="240px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" style="clip: rect(auto, auto, auto, auto);">
               <span style="margin-left:25px"> Birthday</td>
            <td class="style5">
                <asp:TextBox ID="txtbirth" runat="server" Width="240px"></asp:TextBox>
                <cc1:CalendarExtender ID="txtbirth_CalendarExtender" runat="server" 
                    Format="dd-MMM-yyyy" TargetControlID="txtbirth">
                </cc1:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="style13" style="clip: rect(auto, auto, auto, auto);">
               <span style="margin-left:25px"> Service Type
            </td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList3" runat="server" Width="240px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>A C Service</asp:ListItem>
                    <asp:ListItem>Running Repairs</asp:ListItem>
                    <asp:ListItem>Accidental</asp:ListItem>
                    <asp:ListItem>Paid Service</asp:ListItem>
                    <asp:ListItem>Free Service</asp:ListItem>
                    <asp:ListItem>*** Others***</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style13" style="clip: rect(auto, auto, auto, auto);">
                <span style="margin-left:25px">Booking Date
            </td>
            <td class="style5">
                <asp:TextBox ID="txtdate" runat="server" Width="240px"></asp:TextBox>
                <cc1:CalendarExtender ID="txtdate_CalendarExtender" runat="server" 
                    Format="dd-MMM-yyyy" TargetControlID="txtdate">
                </cc1:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="style13" style="clip: rect(auto, auto, auto, auto);">
                <span style="margin-left:25px">Service Workshop
            </td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList4" runat="server" Width="240px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Patliputra</asp:ListItem>
                    <asp:ListItem>Bailey Road</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr><td class="style12" style="clip: rect(auto, auto, auto, auto);"></td></tr>
    </table>
    <br />
   
    <br />
    <table>
<tr><td align="center" class="style16">
    <br />
    <asp:Button ID="Button3" runat="server" Height="40px" Text="UPDATE" 
        Width="105px" style="margin-left:300px"  onclick="Button3_Click" 
        CssClass="style14"  />
    &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="RESET" Height="40px" style="margin-left:100px "
        onclick="Button1_Click1" Width="105px" CssClass="style14" />
    
    <asp:Button ID="Button4" runat="server" Height="40px" onclick="Button4_Click" style="margin-left:90px"
        Text="VIEW ALL RECORDS" Width="226px" CssClass="style14" />
    <br />
    <br />
    <br />
    </td></tr> 
<tr><td align="center" class="style16">
    &nbsp;</td></tr> 
    </table>
</div>
</asp:Panel>

<asp:Panel ID="Panel2" runat="server">
<table>
    <tr>
    <td>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="BOOKING_ID">
                      <ItemTemplate>
                      <asp:Label ID="booking_id" runat="server" Text='<%# Eval("booking_id") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="CUSTOMER_REF">
                    <ItemTemplate>
                        <asp:Label ID="cust_ref" runat="server" Text='<%# Eval("customer_ref_no") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="REGISTRATION_NO">
                    <ItemTemplate>
                        <asp:Label ID="registration_no" runat="server" 
                            Text='<%# Eval("registration_no") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="VEHICLE_TYPE">
                    <ItemTemplate>
                        <asp:Label ID="vehicle_type" runat="server" Text='<%# Eval("vehicle_type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="CUSTOMER_NAME">
                <ItemTemplate>
                <asp:Label ID="customer_name" runat="server" Text='<%# Eval("customer_name") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MOBILE_NO">
                <ItemTemplate>
                <asp:Label ID="mobile_no" runat="server" Text='<%# Eval("mobile_no") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CHASIS_NO">
                <ItemTemplate>
                <asp:Label ID="chasis_no" runat="server" Text='<%# Eval("chasis_no") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EMAIL"><ItemTemplate>
                <asp:Label ID="email" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ADDRESS"><ItemTemplate>
                <asp:Label ID="address" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BIRTHDAY"><ItemTemplate>
                <asp:Label ID="birthday" runat="server" Text='<%# Eval("birthday") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="COMPANY"><ItemTemplate>
                <asp:Label ID="company" runat="server" Text='<%# Eval("company") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MODEL"><ItemTemplate>
                <asp:Label ID="model" runat="server" Text='<%# Eval("model") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SERVICE_TYPE"><ItemTemplate>
                <asp:Label ID="service_type" runat="server" Text='<%# Eval("service_type") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BOOKING_DATE"><ItemTemplate>
                <asp:Label ID="booking_date" runat="server" Text='<%# Eval("booking_date") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SERVICE_WORKSHOP"><ItemTemplate>
                <asp:Label ID="service_workshop" runat="server" Text='<%# Eval("service_workshop") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </td></tr></table>

</asp:Panel>

</div>
 </form>
 </asp:Content>

