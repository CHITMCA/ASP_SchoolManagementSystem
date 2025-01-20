<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="ASP_Application2.Views.Admin.Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <link href="../../sweet/sweetalert2.min.css" rel="stylesheet" />
    <script src="../../sweet/sweetalert2.min.js"></script>
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
    <div class="row">
        <div class="text-bg-warning">
            <h6 class="text-center">Departments List</h6>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-5">
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <img src="../../Photos/Person_Teacher.jpg" />
                </div>
                <div class="col"></div>
            </div>
            <div class="row mt-5">
                <div class="col">
                    <div class="mb-2">
                        <label>Department Name</label>
                        <input type="text" id="txtDepartment" class="form-control" runat="server" placeholder="Enter Department Name" />
                    </div>
                </div>

                <div class="col">
                    <div class="mb-2">
                        <label>Remarks</label>
                        <input type="text" id="txtRemarks" class="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <div class="row mt-2">
            </div>
            <div class="row mt-1">
                <label class="text-center text-danger" id="errMsg" runat="server"></label>
                <div class="col d-grid">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" Class="btn btn-warning btn-block" OnClick="btnUpdate_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button ID="btnSave" runat="server" Text="Save" Class="btn btn-primary btn-block" OnClick="btnSave_Click" />
                </div>
                <div class="col d-grid">
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" Class="btn btn-danger btn-block" OnClick="btnDelete_Click" />
                </div>
            </div>
        </div>
        <div class="col-7">
            <div class="row">

                <div class="col">
                    <h5 class="text-center text-danger">Departments List</h5>
                </div>
            </div>
            <asp:GridView ID="GridDepartmentsList" Class="table" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridDepartmentsList_SelectedIndexChanged">
            </asp:GridView>
        </div>
    </div>
</asp:Content>
