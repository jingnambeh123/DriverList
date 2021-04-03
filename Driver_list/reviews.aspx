<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reviews.aspx.cs" Inherits="Driver_list.reviews" %>

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
        }
        .auto-style2 {
            width: 677px;
            text-align: right;
        }
        .auto-style3 {
            height: 26px;
            width: 677px;
            text-align: right;
        }
        .auto-style5 {
            width: 677px;
            height: 29px;
            text-align: right;
        }
        .auto-style6 {
            height: 29px;
        }
        .auto-style7 {
            width: 100%;
            height: 272px;
        }
        .auto-style8 {
            width: 677px;
            height: 28px;
        }
        .auto-style9 {
            height: 28px;
        }
        </style>
</head>
<body style="height: 858px">
    <form id="form1" runat="server">
        <h1>
            Reviews &amp; Comments</h1>
        <table class="auto-style7">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                 <td>  
                     &nbsp;</td>  
            </tr>
            <tr>
                <td class="auto-style5">Customer ID :</td>
                <td class="auto-style6"><asp:TextBox ID="custID" runat="server"></asp:TextBox>
                </td>
                 <td>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" InitialValue="" ControlToValidate="custID" ErrorMessage="Please enter customer ID !" ForeColor="Red"></asp:RequiredFieldValidator>  
                </td>  
            </tr>
            <tr>
                <td class="auto-style3">Rating ( 1 - 5 ):</td>
                <td class="auto-style1"><asp:TextBox ID="rating" runat="server"></asp:TextBox>
                </td>
                 <td>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" InitialValue="" ControlToValidate="rating" ErrorMessage="Please enter rating !" ForeColor="Red"></asp:RequiredFieldValidator>  
                </td>  
            </tr>
            <tr>
                <td class="auto-style2">Comments :</td>
                <td>
                    <asp:TextBox ID="comments" runat="server" Height="104px" Width="255px"></asp:TextBox>
 
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" style="height: 29px" OnClick="btnSubmit_Click" />
                </td>
            </tr>


        </table>
    </form>
</body>
</html>
