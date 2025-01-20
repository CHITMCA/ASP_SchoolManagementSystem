<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="ASP_Application2.Views.Admin.Teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">
    <div class="text-bg-warning">
        <h6 class="text-center">Manage Teachers</h6>
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

        <div class="row mt-2">
            <div class="col">
                <div class="mb-2">
                    <label>Teacher Name</label>
                    <input type="text" id="TName" runat="server" class="form-control" placeholder="Enter Name" />&nbsp;</div>
            </div>
            <div class="col">
                <div class="mb-2">
                    <label>Teacher Email</label>
                    <input type="email" id="Temail" runat="server" class="form-control" placeholder="Enter Email" />
                </div>
            </div>
        </div>
       
        <div class="row mt-2">
            <div class="col">
                <div class="mb-2">
                    <label>Date of birth</label>
                    <input type="date" id="Tdob" runat="server" class="form-control" placeholder="Enter Phone" />
                </div>
            </div>
           
        </div>
        <div class="row mt-2">
            <div class="col">
                <div class="mb-2">
                    <label>Teacher Salary</label>
                    <input type="text" id="TSalary" runat="server" class="form-control" placeholder="Enter Salary" />
                </div>
            </div>
            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                        <label>Teacher Password</label>
                        <input type="text" id="TPassword" runat="server" class="form-control" placeholder="Enter Password" /></div>
                </div>
            </div>
       
        <br />
        <div class="row">
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
            <div>
                <h5 class="text-center text-bg-primary">Teachers List</h5>
            </div>
        </div>
        <asp:GridView ID="TeacherList" Class="table" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="TeacherList_SelectedIndexChanged">
        </asp:GridView>
    </div>
</div>
</asp:Content>
