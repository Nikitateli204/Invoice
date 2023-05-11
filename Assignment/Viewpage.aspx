<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Viewpage.aspx.cs" Inherits="Viewpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Height="236px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="514px">
            <Columns>
                <asp:BoundField DataField="no" HeaderText="Invoice No">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="clientname" HeaderText="Client Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="city" HeaderText="City">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField HeaderText="Show Invoice" ShowSelectButton="True">
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [no], [clientname], [city] FROM [Table1]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
