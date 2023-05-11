<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Invoice.aspx.cs" Inherits="Invoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            margin-bottom: 20px;
        }
        .style6
        {
            height: 48px;
        }
        .style10
        {
            height: 47px;
        }
        .style12
        {
            height: 48px;
            width: 388px;
        }
        .style13
        {
            height: 49px;
            width: 388px;
        }
        .style14
        {
            height: 47px;
            width: 388px;
        }
        .style16
        {
            height: 48px;
            width: 236px;
            text-align: right;
        }
        .style18
        {
            height: 47px;
            width: 236px;
            text-align: right;
        }
        .style24
        {
            height: 47px;
            text-align: center;
        }
        .style25
        {
            height: 88px;
            text-align: center;
        }
        .style26
        {
            height: 48px;
            text-align: right;
        }
        .style27
        {
            height: 49px;
            width: 215px;
            text-align: right;
        }
        .style28
        {
            height: 47px;
            width: 215px;
            text-align: right;
        }
        .style33
        {
            height: 48px;
            text-align: center;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style25" colspan="4">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Height="57px" 
                        style="color: #FFFFFF; background-color: #000000; text-align: center;" Text="INVOICE" 
                        Width="272px"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            
                <td class="style26">
                    &nbsp; Company/Client Name&nbsp;</td>
                <td class="style12">
                    <asp:TextBox ID="txt1" runat="server" Height="43px" Width="376px"></asp:TextBox>
                </td>
            
            <tr>
                <td class="style27">
                    Country&nbsp;&nbsp; </td>
                <td class="style13">
                    <asp:TextBox ID="txt2" runat="server" Height="43px" Width="376px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    City&nbsp;&nbsp; </td>
                <td class="style12">
                    <asp:TextBox ID="txt3" runat="server" Height="43px" Width="376px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style28">
                    Address&nbsp;&nbsp; </td>
                <td class="style14">
                    <asp:TextBox ID="txt4" runat="server" Height="43px" Width="376px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style28">
                    Postal Address&nbsp;&nbsp; </td>
                <td class="style14">
                    <asp:TextBox ID="txt5" runat="server" Height="43px" Width="376px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style28">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24" colspan="2">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style33" colspan="2">
                    <strong>Details</strong></td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style26">
                    Account No </td>
                <td class="style12">
                    <asp:TextBox ID="txt15" runat="server" Height="43px" Width="376px"></asp:TextBox>
                </td>
                <td class="style16">
                    Invoice No</td>
                <td class="style6">
                    <asp:TextBox ID="txt" runat="server" Height="43px" Width="376px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    Date</td>
                <td class="style12">
                    <asp:TextBox ID="txt16" runat="server" Height="43px" Width="279px"></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style26">
                    Email Address</td>
                <td class="style12">
                    <asp:TextBox ID="txt17" runat="server" Height="43px" Width="376px"></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style26">
                    Mobile No</td>
                <td class="style12">
                    <asp:TextBox ID="txt18" runat="server" Height="43px" Width="376px"></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                        onclick="Button1_Click" style="color: #FFFFFF; background-color: #009933" 
                        Text="Save" Width="112px" Height="46px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="45px" 
                        onclick="Button2_Click" style="color: #FFFFFF; background-color: #0033CC" 
                        Text="View Invoices" Width="155px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
