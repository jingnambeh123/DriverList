<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="driverList.aspx.cs" Inherits="Driver_list.driverList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        body{
            background-color:aqua;
        }

        h1{
            text-align:center;
        }
    </style>

</head>
<body>

    <form id="form1" runat="server">
         <h1>
            ADD DRIVER</h1>
        <asp:LinqDataSource ID="driverListGridView" runat="server" ContextTypeName="Driver_list.driverlistDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="drivers">
        </asp:LinqDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="driverID" DataSourceID="driverListGridView" Height="208px" Width="1551px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="driverID" HeaderText="driverID" ReadOnly="True" SortExpression="driverID" />
                <asp:BoundField DataField="driverName" HeaderText="driverName" SortExpression="driverName" />
                <asp:BoundField DataField="driverGender" HeaderText="driverGender" SortExpression="driverGender" />
                <asp:BoundField DataField="driverStatus" HeaderText="driverStatus" SortExpression="driverStatus" />
                <asp:BoundField DataField="driverAddress" HeaderText="driverAddress" SortExpression="driverAddress" />
                <asp:BoundField DataField="driverContact" HeaderText="driverContact" SortExpression="driverContact" />
                <asp:BoundField DataField="driverIC" HeaderText="driverIC" SortExpression="driverIC" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
