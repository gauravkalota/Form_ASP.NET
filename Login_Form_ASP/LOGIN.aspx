<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="Login_Form_ASP.LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .auto-style2 {
            text-align: center;
            font-size: 50px;

        }
        .auto-style1 {
            font-size: 30px;

        }
        table
        {
            margin:auto;
            width:300px;
            /////height:300px;
            border:5px black ridge;
            margin-top:150px;
        }
        .link{
            margin-left:50px;
            font-size:25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="4" cellspacing="4" >
                <tr>
                    <td class="auto-style2" colspan="2">Login</td>
                </tr>
                <tr>
                    <td class="auto-style1">Username</td>
                    <td>
                        <asp:TextBox ID="UserTextBox" runat="server" Width="350px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserTextBox" Display="Dynamic" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password</td>
                    <td>
                        <asp:TextBox ID="PassTextBox" runat="server" Width="350px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="LoginButton" runat="server" OnClick="Button1_Click" Text="LOGIN" Width="167px" />
                    </td>
                </tr>
                <tr>
                    <td class="link"  colspan="2" >
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="REGISTER.aspx" >Not Register yet? Click here</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
