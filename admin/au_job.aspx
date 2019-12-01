<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminTATA.master" AutoEventWireup="true" CodeFile="au_job.aspx.cs" Inherits="admin_Default" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            font-family: "Arial Black";
        }
        .style5
        {
            width: 1764px;
            font-family: "Arial Black";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form name="f4" method="post" action="#">
<div>
    <asp:Panel ID="Panel1" runat="server">
    <table width="100%" align="center">
<tr><td colspan = "2" align="center" bgcolor="#CCCCCC">
    <br />
    <h1>JOB CARD UPDATION</h1>
    <br />
    
    </td>
</tr>
<tr><td colspan = "2">
    <br />
    </td></tr>

    <tr>
    <td align="center" class="style4" >Customer Reference Number</td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            Width="240px" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
    </td>
</tr>
<tr><td align="center" class="style4"  ><span class="style5">Booking Id</span><span 
        class="style4"> </span> </td>
    <td>
        <asp:TextBox ID="txtbook" runat="server" Width="240"></asp:TextBox></td>    
    </td></tr>
   
<tr>
    <td align="center" class="style4"  >Vehicle Registration Number</td>
    <td>
        <asp:TextBox ID="txtvehreg" runat="server" Width="240"></asp:TextBox></td>
</tr>
<tr>
    <td align="center" class="style4"  >Chasis Number</td>
    <td class="style4">
        <asp:TextBox ID="txtchasis" runat="server" Width="240px"></asp:TextBox></td>
</tr>
<tr>
    <td align="center" class="style4" >Status</td>
    <td>
        <asp:DropDownList ID="DropDownList2" runat="server" Width="240" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem>***status***</asp:ListItem>
            <asp:ListItem>Open</asp:ListItem>
            <asp:ListItem>Close</asp:ListItem>
        </asp:DropDownList>
    </td>
</tr>
<tr>
    <td align = "center" class="style4" >Created Date</td>
    <td class="style4">
        <asp:TextBox ID="txtdate" runat="server" Width="240"></asp:TextBox></td>
        <cc1:calendarextender ID="CalendarExtender2" runat="server"  
            Format="dd-MMM-yyyy" TargetControlID="txtdate">
                                                                </cc1:calendarextender>
                                                                

</tr>
<tr>
    <td align="center" class="style4"  >Tentative Date / Time</td>
    <td class="style4"><asp:TextBox ID="txttendate" runat="server" Width="240"></asp:TextBox></td>
    <cc1:calendarextender ID="CalendarExtender1" runat="server"  
            Format="dd-MMM-yyyy" TargetControlID="txttendate">
                                                                </cc1:calendarextender>
                                                                

</tr>
<tr><td colspan="2"></td></tr>
</table>
</asp:Panel>
<table>
<tr><td colspan="2">
   
    <asp:Button ID="update_job" runat="server" Text="UPDATE" 
        style="margin-left:350px" Height="35" Width="175" CssClass="style4" 
        onclick="update_job_Click" />
    <asp:Button ID="view" runat="server" Text="VIEW ALL RECORDS" 
        style="margin-left:150px" Width="175" Height="35" CssClass="style4" 
        onclick="view_Click" />
 </td></tr>
<tr><td colspan="2">
 </td></tr></table>
<table >
    <asp:Panel ID="Panel2" runat="server">
        <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False">
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

