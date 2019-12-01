<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminTATA.master" AutoEventWireup="true" CodeFile="ad_job.aspx.cs" Inherits="admin_Default" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style3
        {
            font-family: "Arial Black";
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
        textarea
        {
            border:0px;
            border-bottom:1px solid #ff0000;
                   
        }
        .style15
        {
            height: 568px;
            margin-right: 0px;
            margin-bottom: 0px;
            margin-top: 0px;
        }
        .style16
        {
            height: 436px;
            width: 79%;
            margin-left: 150px;
            margin-top: 0px;
            margin-right: 97px;
        }
        .style20
        {
            height: 106px;
        }
        .style21
        {
            font-family: "Arial Black";
        }
        .style22
        {
            width: 1764px;
            font-family: "Arial Black";
        }
        .style9
        {
            width: 1070px;
            margin-left: 26px;
            height: 39px;
            margin-top: 0px;
            margin-right: 120px;
        }
        .style10
        {
            height: 59px;
        }
        .style11
        {
            font-family: "Arial Black";
            font-size: large;
            margin-left: 303px;
        }
        .style12
        {
            font-family: "Arial Black";
            width: 1244px;
            font-size: large;
            margin-left: 76px;
        }
        .style13
        {
            font-family: "Arial Black";
            font-size: large;
            margin-left: 71px;
        }
        .style23
        {
            margin-bottom: 34px;
        }
        .style24
        {
            font-family: "Arial Black";
            width: 435px;
        }
        .style25
        {
            width: 335px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form name="f3" action="#" method="post">
    <div>
    <table width="100%" class="style20">
    <tr><td colspan = "2" align="center" bgcolor="#CCCCCC">
    <br />
    <h1>JOB CARD CREATION</h1>
    <br />
    </td>
    </tr>
    </table>
    
    <div style="background-image: url('../Images/43587644-male-hand-pressing-job-description-key-button-over-blue-abstract-background-Stock-Vector.jpg')" 
                class="style15">
      <asp:Panel ID="Panel1" runat="server" Height="428px" CssClass="style23">
        
        <table align="center" class="style16" border="0" style=" opacity:0.60;" 
         bgcolor="White">

        <tr><td colspan = "2" class="style7">
    <br class="style21" />
    </td></tr>

    <tr>
    <td align="center" class="style24">Customer Reference Number</td>
    <td class="style25">
        <asp:DropDownList ID="DropDownList2" runat="server" Width="241px" 
            AutoPostBack="True" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        </td>
</tr>
<tr><td align="center" class="style24" ><span class="style22">Booking Id</span><span 
        class="style21"> </span> </td>
    <td class="style25">
        <asp:TextBox ID="txtbook" runat="server" Width="240px"></asp:TextBox>
    </td></tr>
   
<tr>
    <td align="center" class="style24" >Vehicle Registration Number</td>
    <td class="style25">
        <asp:TextBox ID="txtvehreg" runat="server" Width="240"></asp:TextBox></td>
</tr>
<tr>
    <td align="center" class="style24" >Chasis Number</td>
    <td class="style25">
        <asp:TextBox ID="txtchasis" runat="server" Width="240px"></asp:TextBox></td>
</tr>
<tr>
    <td align="center" class="style24" >Status</td>
    <td class="style25">
        <asp:DropDownList ID="DropDownList1" runat="server" Width="240" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>select</asp:ListItem>
            <asp:ListItem>Open</asp:ListItem>
            <asp:ListItem>Close</asp:ListItem>
        </asp:DropDownList>
    </td>
</tr>
<tr>
    <td align = "center" class="style24">Created Date</td>
    <td class="style25">
        <asp:TextBox ID="txtdate" runat="server" Width="240"></asp:TextBox></td>
        <cc1:calendarextender ID="CalendarExtender2" runat="server"  
            Format="dd-MMM-yyyy" TargetControlID="txtdate">
                                                                </cc1:calendarextender>
                                                                

</tr>
<tr>
    <td align="center" class="style24" >Tentative Date / Time</td>
    <td class="style25"><asp:TextBox ID="txttendate" runat="server" Width="240"></asp:TextBox></td>
    <cc1:calendarextender ID="CalendarExtender1" runat="server"  
            Format="dd-MMM-yyyy" TargetControlID="txttendate">
                                                                </cc1:calendarextender>
                                                                

</tr>
<tr><td colspan="2" class="style14"></td></tr>
</table>
             
         
        </asp:Panel>
<table class="style9">
<tr><td class="style10">
   
    <asp:Button ID="btnjob" runat="server" Text="PUBLISH JOB CARD"
        CssClass="style11" Height="35px" Width="211px" onclick="btnjob_Click" />
    <asp:Button ID="btnreset" runat="server" Text="RESET" CssClass="style12" 
        Height="35px" Width="110px" onclick="btnreset_Click" />
    <asp:Button ID="Button2" runat="server" CssClass="style13" Height="33px" 
        Text="VIEW ALL RECORDS" onclick="Button2_Click" Width="261px" />
    </td></tr>
<tr><td>
    
   </td></tr></table>
   
   </div>
   
<table >
    <asp:Panel ID="Panel2" style="margin-left:80px" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" align="center">
            <Columns>
                <asp:TemplateField HeaderText="CUSTOMER_REF">
                    <ItemTemplate>
                        <asp:Label ID="cust_ref" runat="server" Text='<%# Eval("customer_ref_no") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BOOKING ID">
                    <ItemTemplate>
                        <asp:Label ID="booking_id" runat="server" Text='<%# Eval("booking_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="JOB CARD NO.">
                    <ItemTemplate>
                        <asp:Label ID="job_card_no" runat="server" 
                            Text='<%# Eval("job_card_no") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="REGISTRATION NO">
                      <ItemTemplate>
                      <asp:Label ID="registration" runat="server" Text='<%# Eval("vehicle_reg_no") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CHASIS NO">
                <ItemTemplate>
                <asp:Label ID="chasis_no" runat="server" Text='<%# Eval("chasis_no") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="STATUS">
                <ItemTemplate>
                <asp:Label ID="status" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CREATED DATE">
                <ItemTemplate>
                <asp:Label ID="created_date" runat="server" Text='<%# Eval("created_date") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TENTATIVE DATE"><ItemTemplate>
                <asp:Label ID="tentative" runat="server" Text='<%# Eval("tentative_date") %>'></asp:Label>
                                              </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
    </asp:Panel>  
</table>
</div>
</form>
</asp:Content>

