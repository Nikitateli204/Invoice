<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Createinvoice.aspx.cs" Inherits="Createinvoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 100%;
            height: 225px;
        }
        .style2
        {
            width: 470px;
            text-align: right;
        }
        .style6
        {
            width: 35px;
        }
        .style7
        {
            width: 300px;
            text-align: right;
        }
        .style10
        {
            width: 470px;
            text-align: right;
            height: 49px;
        }
        .style11
        {
            height: 49px;
        }
        .style12
        {
            width: 470px;
            text-align: right;
            height: 51px;
        }
        .style13
        {
            height: 51px;
        }
        .style14
        {
            width: 470px;
            text-align: right;
            height: 46px;
        }
        .style15
        {
            height: 46px;
        }
        .style16
        {
            text-align: center;
            height: 44px;
            font-size: x-large;
            color: #33CC33;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    
        <table class="style1">
            <tr>
                <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Text="ADD PRODUCTS ON INVOICE" style="font-size: x-large"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;&nbsp;
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <table class="style1">
                                <tr>
                                    <td class="style7">
                                        <strong>Invoice to :&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td class="style6">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("clientname") %>'></asp:Label>
                                    </td>
                                    <td class="style6">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("country") %>'></asp:Label>
                                    </td>
                                    <td class="style6">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                                    </td>
                                    <td class="style6">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                    </td>
                                    <td class="style6">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
                <td>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Table1] WHERE ([no] = @no)">
                        <SelectParameters>
                            <asp:SessionParameter Name="no" SessionField="no" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16" colspan="2">
                    <strong>Add Products</strong></td>
            </tr>
            <tr>
                <td class="style14">
                    Product Name</td>
                <td class="style15">
                    <asp:TextBox ID="TextBox1" runat="server" Width="304px" Height="38px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    Price</td>
                <td class="style13">
                    <asp:TextBox ID="TextBox2" runat="server" Width="304px" Height="38px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    Quantity</td>
                <td class="style11">
                    <asp:TextBox ID="TextBox3" runat="server" Width="304px" Height="38px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Save Records" Height="40px" 
                        style="font-weight: 700; color: #FFFFFF; background-color: #00CC00" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="39px" 
                        onclick="Button2_Click" style="color: #FFFFFF; background-color: #0033CC" 
                        Text="View Invoices" Width="159px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </form>
</body>
</html>
