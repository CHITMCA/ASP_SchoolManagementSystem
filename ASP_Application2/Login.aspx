<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASP_Application2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="sweet/sweetalert2.min.css" rel="stylesheet" />
    <script src="sweet/sweetalert2.min.js"></script>
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
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <div class="container">
            <div class="row">
                <div class="col-md-4 mx-auto" style="box-shadow: 1px 2px 77px -4px rgba(0,0,0,0.7); -moz-box-shadow: -1px 2px 77px -4px rgba(0,0,0,0.7); box-shadow: -1px 2px 77px -4px rgba(0,0,0,0.7);">
                    <br />

                    <div class="col-md-12">
                        <div class="jumbotron text-center text-white bg-primary">
                            <h2>Tutor Login</h2>
                        </div>
                    </div>
                    <br />
                    <div class="row  ">
                        <div class="col-10">
                            <div class="mb-2">
                                <div>
                                    <asp:TextBox ID="userNametxt" placeholder="Enter username" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="userNametxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter username"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="col-10">
                            <div class="mb-2">
                                <asp:TextBox ID="Passwordtxt" placeholder="Enter Password" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Passwordtxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Enter password"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <br />
                        <label class="text-center text-danger" id="errMsg" runat="server"></label>
                        <div class="col-5">
                            <div class="mb-2">
                                <asp:Button CssClass="btn btn-primary btn-block" ID="TutorLoginBtn" runat="server" Text="Login" OnClick="TutorLoginBtn_Click" />

                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
    </form>
</body>
</html>
