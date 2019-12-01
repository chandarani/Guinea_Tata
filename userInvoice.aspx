<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userInvoice.aspx.cs" Inherits="userInvoice" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style type="text/css">
       .GridviewDiv {font-size: 100%; font-family: 'Lucida Grande', 'Lucida Sans Unicode', Verdana, Arial,Helevetica, sans-serif; color: #303933;}
.headerstyle
{
color:#FFFFFF;border-right-color:#abb079;border-bottom-color:#abb079;background-color:#df5015;padding:0.5em 0.5em 0.5em 0.5em;text-align:center;
}
       
        .style1
        {
            height: 39px;
        }
        .style2
        {
            width: 972px;
        }
        .style3
        {
            width: 317px;
        }
        .style4
        {
            height: 65px;
         font-size: xx-large;
     }
        .style6
        {
            width: 346px;
        }
        .style9
        {
            width: 728px;
        }
    </style>
     <SCRIPT LANGUAGE="JavaScript">
         function printpage() {
             document.getElementById('btn_Printpermit').style.visibility = 'hidden';


             window.print()
         }
         

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="90%" align="center">
    <tr><td align="right""> 
                <asp:Button ID="Button2" runat="server" Text="BACK TO HOME" 
                    onclick="Button2_Click" />
        <asp:Button ID="btn_Printpermit" runat="server" Font-Bold="True" Text="Print"
                     OnClientClick="printpage();" OnClick="btn_Printpermit_Click" Width="10%"   Visible="False" />
&nbsp; </td></tr>
    <tr><td style="text-align: center">
        <font style="font-family: 'Arial Rounded MT Bold'; font-size: 38px"><asp:ScriptManager 
            ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        GUINEA&nbsp; 
        services....... <font color="#0033CC">TATA Motors</font></font></td></tr>
    <tr><td align="center">Anand Vihar,West Boring Canal Road,Patna-800 001 (Bihar)</td></tr>
    <tr><td align="center">Phone: 0612-2557194,2558195</td></tr>
    
    <tr><td style="margin: 10px; border-style: solid none none none; border-width: medium" 
            class="style1" align="right">Date:
        <asp:TextBox ID="txtdate" runat="server" Height="28px" Width="135px" 
            ReadOnly="True"></asp:TextBox>
        </td></tr>
    <tr><td align="justify" 
            style="border-bottom-style: dashed; border-bottom-color: #000000;">
        <table align="right" class="style2">
        <tr style="font-family: 'Arial Rounded MT Bold'; font-size: 19px">
            <td class="style6">Customer Reference Number :</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" Width="205px"></asp:TextBox>
            </td>
            <td align="right" class="style3">Customer Name :</td>
            <td>
                <asp:TextBox ID="txtcname" runat="server" Height="29px" Width="206px" 
                    ReadOnly="True"></asp:TextBox></td></tr>
            <tr style="font-family: 'Arial Rounded MT Bold'; font-size: 19px"><td align="right" 
                    class="style6">Job Card Number :</td>
            <td>
                <asp:TextBox ID="txtjob" runat="server" Height="29px" Width="206px" 
                    ReadOnly="True"></asp:TextBox></td>
              <td align="right">Phone No. :</td>
              <td>
                  <asp:TextBox ID="txtmob" runat="server" Height="29px" Width="206px" 
                      ReadOnly="True"></asp:TextBox></td>
                </tr>
        </table>
    </td></tr>
    <tr><td></td></tr>
    <tr><td align="center" style="font-family: 'Arial Black'; " 
            class="style4">INVOICE  </td> </tr>
     <tr><td align="right""><asp:Button ID="Button1" runat="server" 
            Text="Click to view invoice details ...." onclick="Button1_Click" /></td></tr>
    <tr><td bgcolor="Black"><table width="100%" align="center" border="1">
           
    </table></td></tr>
   <tr>
          <td align="center">
            
             <div class="GridviewDiv">
                 

    <asp:GridView ID="GridView1" runat="server"  ShowFooter="true"
         AutoGenerateColumns="false"  DataKeyNames="serial_no"
        
       onselectedindexchanged="GridView1_SelectedIndexChanged"  >
   <HeaderStyle CssClass="headerstyle" />
    <Columns>
     <asp:TemplateField HeaderText="Serial Number" HeaderStyle-Width="200">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblID" runat="server" Text="<%# ((GridViewRow)Container).RowIndex + 1%>"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
  <%-- <asp:BoundField DataField="serial_no" HeaderText="Serial Number" ReadOnly="true"  />--%>

   <asp:BoundField DataField="product_name" HeaderText="Particulars" ReadOnly="true" HeaderStyle-Width="400"  />

<asp:BoundField DataField="quantity" HeaderText="Quantity" ReadOnly="true"  HeaderStyle-Width="200" />

<asp:BoundField DataField="Amount" HeaderText="amount" ReadOnly="true"   HeaderStyle-Width="200"/>

</Columns>
    </asp:GridView>


</div>
          </td>
   </tr>
   <tr><td>
      
       <table width="100%" align="center" 
            style="font-family: 'Arial Rounded MT Bold'; font-size: 20px">
            <tr><td align="right"> 
                <%--<asp:Button ID="Button2" runat="server" Text="Click to total ...." 
                    onclick="Button2_Click" />--%></td></tr>

        <tr><td align="right" class="style9">Total :  </td><td align="left">
            <asp:TextBox ID="TextBox5" runat="server" Width="237px"></asp:TextBox></td></tr>
            <tr style="font-family: verdana; font-size: 14px"><td align="right">&nbsp;VAT 14%:</td><td>
                <asp:TextBox ID="TextBox6" runat="server" Width="236px"></asp:TextBox></td></tr>
                <tr><td align="right">Net Amount</td><td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="236px"></asp:TextBox></td></tr>
        <tr><td align="right"> 
                &nbsp;</td></tr>

        </table>
    
   </td></tr>

   <tr><td align="center"></td></tr>
   <tr><td align="right">&nbsp;</td></tr>
   <tr><td align="center">This is computer generated bill.There is no guarantee of 
       assurance.</td></tr>
    </table>
    </div>
    </form>
</body>
</html>
