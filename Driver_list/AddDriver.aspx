<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDriver.aspx.cs" Inherits="Driver_list.AddDriver" %>

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

        .auto-style1 {
            height: 26px;
            width: 182px;
        }
        .auto-style2 {
            width: 687px;
            text-align: right;
        }
        .auto-style3 {
            height: 26px;
            width: 687px;
            text-align: right;
        }
        .auto-style5 {
            width: 687px;
            height: 29px;
            text-align:right;
        }
        .auto-style6 {
            height: 29px;
            width: 182px;
        }
        .auto-style7 {
            width: 100%;
            height: 272px;
        }
        .auto-style8 {
            width: 687px;
            height: 28px;
            text-align: right;
        }
        .auto-style9 {
            height: 28px;
            width: 182px;
        }
        .auto-style10 {
            width: 687px;
            height: 48px;
            text-align:right;
        }
        .auto-style11 {
            height: 48px;
            width: 182px;
        }
        .auto-style12 {
            width: 182px;
        }
    </style>
</head>
 
<body style="height: 858px">
    <form id="form1" runat="server">
        <h1>
            ADD DRIVER</h1>
        <table class="auto-style7">
            <tr>
                <td class="auto-style3">Name :</td>
                <td class="auto-style1"><asp:TextBox ID="driverName" runat="server"></asp:TextBox>
                </td>
                 <td>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" InitialValue="" ControlToValidate="driverName" ErrorMessage="Please enter driver name !" ForeColor="Red"></asp:RequiredFieldValidator>  
                </td>  
            </tr>
            <tr>
                <td class="auto-style2">Gender :</td>
                <td class="auto-style12">
                    <asp:TextBox ID="driverGender" runat="server"></asp:TextBox>
                </td>
                 <td>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" InitialValue="" ControlToValidate="driverGender" ErrorMessage="Please enter driver gender !" ForeColor="Red"></asp:RequiredFieldValidator>  
                </td>  
            </tr>
            <tr>
                <td class="auto-style3"> Status :</td>
                <td class="auto-style12">
                    <asp:TextBox ID="driverStatus" runat="server"></asp:TextBox>
                </td>
                 <td>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" InitialValue="" ControlToValidate="driverStatus" ErrorMessage="Please enter driver status !" ForeColor="Red"></asp:RequiredFieldValidator>  
                </td>  
            </tr>
            <tr>
                <td class="auto-style2">Address :</td>
                <td class="auto-style12">
                    <asp:TextBox ID="driverAddress" runat="server" Height="20px" Width="156px"></asp:TextBox>
                </td>
                 <td>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" InitialValue="" ControlToValidate="driverAddress" ErrorMessage="Please enter driver address !" ForeColor="Red"></asp:RequiredFieldValidator>  
                </td>  
            </tr>
            <tr>
                <td class="auto-style10">Contact Number :<br />
                    (Without dash &quot;-&quot;)</td>
                <td class="auto-style11">
                    <asp:TextBox ID="driverContact" runat="server"></asp:TextBox>
                    <br />
                    </td>
                 <td>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" InitialValue="" ControlToValidate="driverContact" ErrorMessage="Please enter driver contact !" ForeColor="Red"></asp:RequiredFieldValidator>  
                </td>  
            </tr>
            <tr>
                <td class="auto-style8">IC Number :<br />
                    (Without dash &quot;-&quot;)</td>
                <td class="auto-style9">
                    <asp:TextBox ID="driverIC" runat="server"></asp:TextBox>
                </td>
                 <td>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" InitialValue="" ControlToValidate="driverIC" ErrorMessage="Please enter driver IC !" ForeColor="Red"></asp:RequiredFieldValidator>  
                </td>  
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" OnSelecting="LinqDataSource1_Selecting">
                    </asp:LinqDataSource>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" style="height: 29px" OnClick="btnSubmit_Click" />
                </td>
            </tr>


        </table>
    </form>
</body>
</html>
