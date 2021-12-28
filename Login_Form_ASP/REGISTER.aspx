<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REGISTER.aspx.cs" Inherits="Login_Form_ASP.REGISTER" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width:650px;
            margin:auto;
            border:ridge 5px black;
            margin-top:50px;
        }
        .auto-style2 {
            width: 200px;
        }
        .auto-style3{
            font-size:30px;
            text-align:center;
        }
        .auto-style4{
            align-items:center;

        }
        .auto-style5{
            bottom:0;
            width:100%;
            text-align:center;
            

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="5" cellspacing="5" class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2">SIGNUP FORM</td>
                </tr>
                <tr>
                    <td class="auto-style2">FIRST NAME</td>
                    <td>
                        <asp:TextBox ID="FirstNameTextBox" runat="server" Width="265px"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" Display="Dynamic" ErrorMessage="Please Enter First Name " ForeColor="Red" SetFocusOnError="True" ControlToValidate="FirstNameTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">LAST NAME</td>
                    <td>
                        <asp:TextBox ID="LastNameTextBox" runat="server" Width="265px"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" Display="Dynamic" ErrorMessage="Please Enter Last Name " ForeColor="Red" SetFocusOnError="True" ControlToValidate="LastNameTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">GENDER</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="109px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="Select" runat="server" Display="Dynamic" ErrorMessage="Please Select Gender" ForeColor="Red" SetFocusOnError="True" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">EMAIL ADDRESS</td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Width="265px"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True" ControlToValidate="EmailTextBox">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">ADDRESS</td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Width="265px"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" Display="Dynamic" ErrorMessage="Please Enter Address" ForeColor="Red" SetFocusOnError="True" ControlToValidate="AddressTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">USERNAME</td>
                    <td>
                        <asp:TextBox ID="UserNameTextBox" runat="server" Width="265px"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" Display="Dynamic" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True" ControlToValidate="UserNameTextBox">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">PASSWORD</td>
                    <td>
                        <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" Width="265px"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="PasswordTextBox">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Please enter strong password with uppercase, lowercase and numbers" ForeColor="Red" SetFocusOnError="True" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\w+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">CONFIRM PASSWORD</td>
                    <td>
                        <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" TextMode="Password" Width="265px"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" Display="Dynamic" ErrorMessage="Please Enter Confirm Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ConfirmPasswordTextBox">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPasswordTextBox" Display="Dynamic" ErrorMessage="Password not identical" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Text="SIGNUP" OnClick="Button1_Click"  />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <asp:ValidationSummary CssClass="auto-style5" ID="ValidationSummary1"  runat="server" BackColor="#CCCCCC" Font-Size="Larger" ForeColor="Red" />
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>
                        <a href="LOGIN.aspx">GO TO LOGIN FORM</a>
                    </td>
                </tr>
                </table>

        </div>
    </form>
</body>
</html>
