<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Schedules.aspx.cs" Inherits="ASP_Application2.Views.Admin.Schedules" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">
        <div class="text-bg-warning">
            <h6 class="text-center">Manage Schedules</h6>
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
                        <asp:DropDownList ID="DepName" runat="server" Class="form-control">
                            <asp:ListItem>Select Department Name</asp:ListItem>
                            <asp:ListItem>MCA</asp:ListItem>
                            <asp:ListItem>MBA</asp:ListItem>
                            <asp:ListItem>BTech</asp:ListItem>
                            <asp:ListItem>BCA</asp:ListItem>
                            <asp:ListItem>BBA</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col">
                    <div class="mb-2">
                        <label>Days</label>
                        <asp:DropDownList ID="dropDays" runat="server" Class="form-control">
                            <asp:ListItem>Select Day</asp:ListItem>
                            <asp:ListItem>Monday</asp:ListItem>
                            <asp:ListItem>Tuesday</asp:ListItem>
                            <asp:ListItem>Wednesday</asp:ListItem>
                            <asp:ListItem>Thursday</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                        <label>8AM-9AM</label>
                        <asp:DropDownList ID="drop8AM" runat="server" Class="form-control">
                            <asp:ListItem>Select Subject</asp:ListItem>
                            <asp:ListItem>Math</asp:ListItem>
                            <asp:ListItem>Hindi</asp:ListItem>
                            <asp:ListItem>Geography</asp:ListItem>
                            <asp:ListItem>History</asp:ListItem>
                            <asp:ListItem>Science</asp:ListItem>
                            <asp:ListItem>Computer</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="mb-2">
                        <label>9AM-10AM</label>
                        <asp:DropDownList ID="drop9AM" runat="server" Class="form-control">
                            <asp:ListItem>Select Subject</asp:ListItem>
                            <asp:ListItem>Math</asp:ListItem>
                            <asp:ListItem>Hindi</asp:ListItem>
                            <asp:ListItem>Geography</asp:ListItem>
                            <asp:ListItem>History</asp:ListItem>
                            <asp:ListItem>Science</asp:ListItem>
                            <asp:ListItem>Computer</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="mb-2">
                        <label>10AM-11AM</label>
                        <asp:DropDownList ID="drop10AM" runat="server" Class="form-control">
                            <asp:ListItem>Select Subject</asp:ListItem>
                            <asp:ListItem>Math</asp:ListItem>
                            <asp:ListItem>Hindi</asp:ListItem>
                            <asp:ListItem>Geography</asp:ListItem>
                            <asp:ListItem>History</asp:ListItem>
                            <asp:ListItem>Science</asp:ListItem>
                            <asp:ListItem>Computer</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="mb-2">
                        <label>11AM-12AM</label>
                        <asp:DropDownList ID="drop11AM" runat="server" Class="form-control">
                            <asp:ListItem>Select Subject</asp:ListItem>
                            <asp:ListItem>Math</asp:ListItem>
                            <asp:ListItem>Hindi</asp:ListItem>
                            <asp:ListItem>Geography</asp:ListItem>
                            <asp:ListItem>History</asp:ListItem>
                            <asp:ListItem>Science</asp:ListItem>
                            <asp:ListItem>Computer</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="mb-2">
                        <label>12AM-1PM</label>
                        <asp:DropDownList ID="drop12AM" runat="server" Class="form-control">
                            <asp:ListItem>Select Subject</asp:ListItem>
                            <asp:ListItem>Math</asp:ListItem>
                            <asp:ListItem>Hindi</asp:ListItem>
                            <asp:ListItem>Geography</asp:ListItem>
                            <asp:ListItem>History</asp:ListItem>
                            <asp:ListItem>Science</asp:ListItem>
                            <asp:ListItem>Computer</asp:ListItem>
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
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" Class="btn btn-danger btn-block" OnClick="btnDelete_Click" />
                </div>
            </div>
        </div>
        <div class="col-7">
            <div class="row">
                <div class="col">
                    <h5 class="text-center text-danger">Schedules List</h5>
                </div>
            </div>
            <asp:GridView ID="GridSchedulesList" Class="table" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridSchedulesList_SelectedIndexChanged">
            </asp:GridView>
        </div>
    </div>
</asp:Content>
