using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ASP_Application2.Views.Admin
{
    public partial class Departments : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {                                                         
            con = new Models.Functions();
            ShowDepartment();
        }
        private void ShowDepartment()
        {
            string query = "select *from Departmenttbl";
            GridDepartmentsList.DataSource = con.GetData(query);
            GridDepartmentsList.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtDepartment.Value == "" || txtRemarks.Value == "")
                {
                    errMsg.InnerText = "Data Missing!!!";
                }
                else
                {
                    string Department = txtDepartment.Value;
                    string Remarks = txtRemarks.Value;

                    string query = "insert into Departmenttbl values('{0}','{1}')";
                    query = string.Format(query, Department, Remarks);
                    con.SetData(query);
                    ShowDepartment();
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "SuccessLogin();", true);
                    //errMsg.InnerText = "Department Added!!!";
                    txtDepartment.Value = "";
                    txtRemarks.Value = "";

                }
            }
            catch (Exception ex)
            {
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ErrorLogin();", true);
                    errMsg.InnerText = ex.Message;
                }
            }
        }

        int Key=0;
        protected void GridDepartmentsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtDepartment.Value = GridDepartmentsList.SelectedRow.Cells[2].Text;
            txtRemarks.Value = GridDepartmentsList.SelectedRow.Cells[3].Text;
            if (txtDepartment.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(GridDepartmentsList.SelectedRow.Cells[1].Text);
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {                           
            try
            {
                if (txtDepartment.Value == "" || txtRemarks.Value == "")
                {
                    errMsg.InnerText = "Data Missing!!!";
                }
                else
                {
                    string Department = txtDepartment.Value;
                    string Remarks = txtRemarks.Value;

                    string query = "update Departmenttbl set DepName='{0}',DepRem='{1}' where DepId={2}";
                    query = string.Format(query, Department, Remarks, GridDepartmentsList.SelectedRow.Cells[1].Text);
                    con.SetData(query);
                    ShowDepartment();
                    errMsg.InnerText = "Department Updated!!!";
                    txtDepartment.Value = "";
                    txtRemarks.Value = "";

                }
            }
            catch (Exception ex)
            {
                {
                    errMsg.InnerText = ex.Message;
                }
            }
        }

        

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtDepartment.Value == "" || txtRemarks.Value == "")
                {
                    errMsg.InnerText = "Missing Data!!!";
                }
                else
                {
                    string Department = txtDepartment.Value;
                    string Remarks = txtRemarks.Value;

                    string query = "delete from Departmenttbl where depid={0}";
                    query = string.Format(query, GridDepartmentsList.SelectedRow.Cells[1].Text);
                    con.SetData(query);
                    ShowDepartment();
                    errMsg.InnerText = "Department Deleteted!!!";
                    txtDepartment.Value = "";
                    txtRemarks.Value = "";
                }
            }
            catch (Exception ex)
            {
                {
                    errMsg.InnerText = ex.Message;
                }
            }
        }

       
    }
}