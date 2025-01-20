<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarion_Form.aspx.cs" Inherits="ASP_SchoolManagementSystem.Registrarion_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="sweet/sweetalert2.min.js"></script>
    <link href="sweet/sweetalert2.min.css" rel="stylesheet" />
    
    <script type="text/javascript">
        function SuccessLogin() {
            Swal.fire(
                'Success!',
                'Form has been inserted successfuly!',
                'success'
            )
        }
        function ErrorLogin() {
            Swal.fire(
                'Failure!',
                'Form has been insertion failed!',
                'error'
            )
        }
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 133%;
            height: 578px;
            margin-right: 0px;
        }

        .auto-style3 {
            width: 184px;
        }

        .auto-style4 {
            width: 1556px;
        }

        .auto-style5 {
            width: 232px;
            height: 152px;
            position: absolute;
            top: 72px;
            left: 621px;
            z-index: 1;
            bottom: 591px;
        }

        .auto-style6 {
            width: 377px;
        }

        .auto-style7 {
            margin-top: 0px;
            margin-left: 39px;
        }
    </style>


    <%--<script src="Scripts/bootstrap.min.js"></script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="box-shadow: 1px 2px 77px -4px rgba(0,0,0,0.7); -moz-box-shadow: -1px 2px 77px -4px rgba(0,0,0,0.7); box-shadow: -1px 2px 77px -4px rgba(0,0,0,0.7);">
            <br />
            <div class="row">
                <div class="col-md-15">
                    <div class="container" style="box-shadow: 1px 2px 77px -4px rgba(0,0,0,0.7); -moz-box-shadow: -1px 2px 77px -4px rgba(0,0,0,0.7); box-shadow: -1px 2px 77px -4px rgba(0,0,0,0.7);">
                        <h1 class="jumbotron bg-dark text-white text-center">Registrarion Form</h1>
                    </div>
                    <%-- <div style="background-color: dimgrey; height: 50px; width: 1500px">
                    <center>
                        <asp:Label ID="Label10" runat="server" ForeColor="#FF0066" Text="Registrarion Form" Font-Size="X-Large"></asp:Label>
                    </center>
                </div>--%>
                </div>
            </div>


            <div class="row">
                <div class="col-md-4 ">
                    <asp:Label ID="Label6" runat="server" Text="ID"></asp:Label>
                    <asp:TextBox ID="txtID" CssClass="form-control" placeholder="Enter ID" runat="server" ToolTip="Enter ID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldtxtID" runat="server" ControlToValidate="txtID" ErrorMessage="Enter ID" ForeColor="Red">*</asp:RequiredFieldValidator>                  
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    <asp:TextBox ID="txtname" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldtxtID0" runat="server" ControlToValidate="txtname" ErrorMessage="Enter name" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
                    <asp:RadioButton ID="rdmale" runat="server" Text="Male" GroupName="rdGender" />
                    <asp:RadioButton ID="rdfemale" runat="server" Text="Female" GroupName="rdGender" />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Mobile"></asp:Label>
                    <asp:TextBox ID="txtMobile" CssClass="form-control" placeholder="Enter Mobile" runat="server" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldtxtID1" runat="server" ControlToValidate="txtMobile" ErrorMessage="Enter Mobile" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Enter Email" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldtxtID2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter name" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Write correct Email_ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Batch"></asp:Label>
                    <asp:DropDownList ID="DropBtch" CssClass="form-control" runat="server" ToolTip="Select Batch">
                        <asp:ListItem>Select batch</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldtxtID3" InitialValue="Select batch" runat="server" ControlToValidate="DropBtch" ErrorMessage="Select Batch" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Date of admission"></asp:Label>
                    <asp:TextBox ID="txtDate" CssClass="form-control" placeholder="Enter Date" runat="server" TextMode="Date"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Course"></asp:Label>
                    <asp:CheckBox ID="Checkdotnet" runat="server" Text="Dotnet" />
                    <asp:CheckBox ID="Checkjava" runat="server" Text="Java" />
                    <asp:CheckBox ID="CheckC" runat="server" Text="C++" />
                    <asp:CheckBox ID="CheckPython" runat="server" Text="Pythan" />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Photo"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" BorderStyle="Dotted" ToolTip="Select Photo" />
                    <asp:RequiredFieldValidator ID="RequiredImage" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Choose Image" ForeColor="Red">*</asp:RequiredFieldValidator>

                    <div class="row">
                        <div class="col-md-10 mx-auto">
                            <%--<asp:Button ID="tutorSignupButton" CssClass="btn btn-primary btn-block" runat="server" Text="SignUp" OnClick="tutorSignupButton_Click" />--%>
                            <div>
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary btn-block" OnClick="btnSubmit_Click" Text="Register Now" /></div>
                            <%--<div><asp:Button ID="btnShow" runat="server" CssClass="btn btn-primary btn-block" OnClick="btnShow_Click1" Text="Show Data" /></div>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="Tomato" CssClass="auto-style5" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" />
                        <asp:BoundField DataField="Sname" HeaderText="Sname" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="Batch" HeaderText="Batch" />
                        <asp:BoundField DataField="Course" HeaderText="Course" />
                        <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo"></asp:ImageField>
                    </Columns>

                    <HeaderStyle BackColor="Tomato"></HeaderStyle>
                </asp:GridView>
            </div>
        </div>

    </form>

</body>
</html>
