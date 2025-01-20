<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Form.aspx.cs" Inherits="WebSchoolManagemntSystem.Registration_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 83%;
            height: 592px;
            margin-right: 0px;
        }
        .auto-style3 {
            width: 1762px;
        }
        .auto-style6 {
            width: 995px;
        }
        .auto-style4 {
            width: 1556px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <center>
                Registration Form</center>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="ID"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                    &nbsp;</td>
                <td class="auto-style4" rowspan="7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtname" runat="server" Font-Strikeout="True"></asp:TextBox>
                    <input type="text" class="form-control" id="txtname1" />

                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:RadioButton ID="rdmale" runat="server" GroupName="rdGender" Text="Male" />
                    <asp:RadioButton ID="rdfemale" runat="server" GroupName="rdGender" Text="Female" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Text="Mobile"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Batch"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropBtch" runat="server">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:CheckBox ID="Checkdotnet" runat="server" Text="Dotnet" />
                    <asp:CheckBox ID="Checkjava" runat="server" Text="Java" />
                    <asp:CheckBox ID="CheckC" runat="server" Text="C++" />
                    <asp:CheckBox ID="CheckPython" runat="server" Text="Pythan" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Photo"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
        <div>
            <br />
        </div>
    </form>
</body>
</html>
