<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="ASP_Application2.Views.Admin.Students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">
        <div class="text-bg-warning">
            <h6 class="text-center">Manage Students</h6>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-5">
            <br />
            <div class="row">
                <div class="col-12">
                    <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <img src="../../Photos/Person_Teacher.jpg" />
                    </div>
                    <div class="col"></div>
                </div>
             </div>
                <div class="row mt-2">
                    <div class="col">
                        <div class="mb-2">
                            <label>Student Name</label>
                            <input type="text" id="SName" runat="server" class="form-control" placeholder="Enter Name" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-2">
                            <label>Student Email</label>
                            <input type="email" id="SEmail" runat="server" class="form-control" placeholder="Enter Email" />
                        </div>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col">
                        <div class="mb-2">
                            <label>Student Phone</label>
                            <input type="text" id="SPhone" runat="server" class="form-control" placeholder="Enter Phone" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-2">
                            <label>Student Address</label>
                            <input type="text" id="SAddress" runat="server" class="form-control" placeholder="Enter Address" />
                        </div>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col">
                        <div class="mb-2">
                            <label>Date of birth</label>
                            <input type="date" id="SDOB" runat="server" class="form-control" placeholder="Enter dob" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-2">
                            <label>Gender</label>
                            <asp:DropDownList ID="DropGender" Class="form-control" runat="server">
                                <asp:ListItem>Select Gender</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col">
                        <div class="mb-2">
                            <label>Password</label>
                            <input type="text" id="SPassword" runat="server" class="form-control" placeholder="Enter Password" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-2">
                            <label>Department</label>
                            <asp:DropDownList  ID="DropDepartment" runat="server" Class="form-control" >
                                
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col">
                        <div class="mb-2">
                            <label>Teacher</label>
                            <asp:DropDownList ID="DropTeacher" runat="server" Class="form-control" >
                                
                            </asp:DropDownList>
                        </div>
                    </div>

                </div>
                <div class="row mt-5">
                    <label class="text-center text-danger" id="errMsg" runat="server"></label>
                    <div class="col d-grid">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" Class="btn btn-warning btn-block" OnClick="btnUpdate_Click" />
                    </div>
                    <div class="col d-grid">
                        <asp:Button ID="btnSave" runat="server" Text="Save" Class="btn btn-primary btn-block" OnClick="btnSave_Click" />
                    </div>
                    <div class="col d-grid">
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" Class="btn btn-danger btn-block" OnClick="btnDelete_Click"  />
                    </div>

                </div>
            </div>
        </div>


        <div class="col-7">
            <div class="row">

                <h5 class="text-center text-bg-primary">Students List</h5>
            </div>

            <asp:GridView ID="gridStudentList" Class="table" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="gridStudentList_SelectedIndexChanged">
            </asp:GridView>
        </div>
    </div>

</asp:Content>
