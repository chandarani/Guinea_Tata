<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminTATA.master" AutoEventWireup="true" CodeFile="ad_personal.aspx.cs" Inherits="admin_Default" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-family: "Arial Black";
        }
        .style4
        {
            font-family: "Arial Black";
        }
        .style5
        {
            width: 1084px;
            margin-right: 0px;
        }
        .style7
        {
            width: 714px;
        }
        .style8
        {
            width: 77%;
            margin-left: 67px;
            margin-top: 73px;
            height: 341px;
        }
        .style9
        {
            font-family: "Arial Black";
            margin-left: 105px;
        }
        .style10
        {
            font-family: "Arial Black";
            margin-left: 93px;
        }
        .style11
        {
            font-family: "Arial Black";
            margin-left: 78px;
        }
        .style13
        {
            margin-right: 257px;
        }
        .style14
        {
            width: 1331px;
        }
        
        input[type=text]
        {
            border:0px;
            border-bottom:1px solid #ff0000;
                    
                      
        }
        select
        {
            
            border:0px;
            border-bottom:1px solid #ff0000;
                   
        }
        .style16
        {
            font-family: "Arial Black";
            width: 1042px;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form name="f5" action="#" method="post" class="style5">
    <table align="center" class="style1">
<tr><td colspan="2" align="center" bgcolor="#CCCCCC">
    <br />
    <h1>PERSONAL DETAILS</h1>
    <br />
    </td></tr>
</table>
 <div style="background-image: url('../Images/518169-backgrounds.jpg')">
    <asp:Panel ID="Panel1" runat="server" Width="1293px">
    
      
<table  width="100%" align="center" class="style13">
<tr><td colspan="2" class="style14">
    
    <br />
    <table align="center" class="style8" align="center"  >
        <tr>
            <td align="center" class="style16">
                Customer Reference Number</td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="241px" 
                    Height="30px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center" class="style16">
                Customer Name</td>
            <td class="style7">
                <asp:TextBox ID="txtcname" runat="server" Width="240" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style16">
                Vehicle Registration Number</td>
            <td class="style7">
                <asp:TextBox ID="txtvehreg" runat="server" Width="240" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style16">
                Company Name</td>
            <td class="style7">
                <asp:TextBox ID="txtcomp" runat="server" Width="240" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style16">
                Model</td>
            <td class="style7">
                <asp:TextBox ID="txtmodel" runat="server" Width="240" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style16">
                Mobile</td>
            <td class="style7">
                <asp:TextBox ID="txtmob" runat="server" Width="240" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style16">
                Address</td>
            <td class="style7">
                <asp:TextBox ID="txtadd" runat="server" Width="240" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style16">
                Email Id</td>
            <td class="style7">
                <asp:TextBox ID="txtmail" runat="server" Width="240" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style16">
                Birthday</td>
            <td class="style7">
                <asp:TextBox ID="txtbirth" runat="server" Width="240px" Height="30px"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender2" runat="server" 
                    Format="dd-MMM-yyyy" TargetControlID="txtbirth">
                </cc1:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    
    <asp:Button ID="Button1" runat="server" CssClass="style4" style="margin-left:250px" Text="SAVE" 
        Height="33px" Width="153px" onclick="Button1_Click" />
    
    <asp:Button ID="Button2" runat="server" CssClass="style11" Text="CLEAR"
        Height="35px" Width="126px" onclick="Button2_Click" />
   
    <asp:Button ID="Button3" runat="server" CssClass="style10" Text="UPDATE"
        Height="35px" Width="137px" onclick="Button3_Click" />
    <asp:Button ID="show" runat="server" CssClass="style9" Height="34px"
        Text="DISPLAY ALL" onclick="show_Click" />
    <br />
    <br />
    </td></tr>
<tr><td colspan="2" class="style14"></td></tr>
<tr><td colspan="2" class="style14"></td></tr>

</table>  
  
</asp:Panel>

<table>
    <asp:Panel ID="Panel2" runat="server">
         <asp:GridView ID="GridView1" align="center" runat="server" AutoGenerateColumns="False">
            <Columns>
                
                <asp:TemplateField HeaderText="CUSTOMER_REF">
                    <ItemTemplate>
                        <asp:Label ID="customer_ref_no" runat="server" Text='<%# Eval("customer_ref_no") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CUSTOMER_NAME">
                <ItemTemplate>
                <asp:Label ID="customer_name" runat="server" Text='<%# Eval("customer_name") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="REGISTRATION_NO">
                    <ItemTemplate>
                        <asp:Label ID="registration_no" runat="server" 
                            Text='<%# Eval("registration_no") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="MOBILE_NO">
                <ItemTemplate>
                <asp:Label ID="mobile" runat="server" Text='<%# Eval("mobile") %>'></asp:Label>
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
               
            </Columns>
        </asp:GridView>
       
    </asp:Panel>
</table>
</div>
</form>
</asp:Content>

