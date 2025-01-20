using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Application2.Views.Admin
{
    public partial class Marks : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            ShowMark();
            GetStudent();
        }

        private void ShowMark()
        {
            string query = "select *from marktbl";
            grdMarksList.DataSource = con.GetData(query);
            grdMarksList.DataBind();
        }
        private void GetStudent()
        {
            string query = "select  *from studenttbl";
            dropSt.DataTextField = con.GetData(query).Columns["stName"].ToString();
            dropSt.DataValueField = con.GetData(query).Columns["stId"].ToString();
            dropSt.DataSource = con.GetData(query);
            dropSt.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (dropSt.SelectedIndex == -1 || dropSub.SelectedIndex == -1 || txtMark.Value == ""|| txtCmnt.Value == "")
                {
                    errMsg.InnerText = "Data Missing!!!";
                }
                else
                {
                    string Student = dropSt.SelectedItem.ToString();
                    string Subject = dropSub.SelectedItem.ToString();
                    string Comment = txtCmnt.Value;
                    string Marks = txtMark.Value;
                    string query = "insert into marktbl values('{0}','{1}','{2}','{3}')";
                    query = string.Format(query, Student, Subject, Comment, Marks);
                    con.SetData(query);
                    ShowMark();
                    errMsg.InnerText = "Marks Added!!!";
                    dropSt.SelectedIndex = -1;
                    dropSub.SelectedIndex = -1;
                    txtMark.Value = "";
                    txtCmnt.Value = "";

                }
            }
            catch (Exception ex)
            {
                {
                    errMsg.InnerText = ex.Message;
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    if (dropSt.SelectedIndex == -1 || dropSub.SelectedIndex == -1||)
            //    {
            //        errMsg.InnerText = "Data Missing!!!";
            //    }
            //    else
            //    {
            //        string Department = txtDepartment.Value;
            //        string Remarks = txtRemarks.Value;

            //        string query = "insert into Departmenttbl values('{0}','{1}')";
            //        query = string.Format(query, Department, Remarks);
            //        con.SetData(query);
            //        ShowDepartment();
            //        errMsg.InnerText = "Department Added!!!";
            //        txtDepartment.Value = "";
            //        txtRemarks.Value = "";

            //    }
        }
    }
}
    

