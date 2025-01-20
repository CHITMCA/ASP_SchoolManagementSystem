<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Marks.aspx.cs" Inherits="ASP_Application2.Views.Admin.Marks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">
        <div class="text-bg-warning">
            <h6 class="text-center">Manage Marks</h6>
        </div>
    </div>
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
                        <label>Student Name</label>
                        <asp:DropDownList ID="dropSt" runat="server" Class="form-control">
                            <asp:ListItem>Select Student</asp:ListItem>
                            <asp:ListItem>Amit Kumar</asp:ListItem>
                            <asp:ListItem>Jyoti Kumari</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                        <label>Subjects</label>
                        <asp:DropDownList ID="dropSub" runat="server" Class="form-control">
                            <asp:ListItem>Select Subject</asp:ListItem>
                            <asp:ListItem>Math</asp:ListItem>
                            <asp:ListItem>Science</asp:ListItem>
                            <asp:ListItem>Civics</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                        <label>Marks</label>
                        <input type="text" id="txtMark" runat="server" class="form-control" placeholder="Enter Marks" />                        
                    </div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                        <label>Comments</label>
                        <input type="text" id="txtCmnt" runat="server" class="form-control" placeholder="Enter Comments" />
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
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" Class="btn btn-danger btn-block" OnClick="btnDelete_Click" />
                </div>
            </div>
        </div>

        <div class="col-7">
            <div class="row">
                <div class="col">
                    <h5 class="text-center text-danger"></h5>
                </div>
            </div>
            <asp:GridView ID="grdMarksList" Class="table" runat="server">
            </asp:GridView>
        </div>
    </div>
</asp:Content>
