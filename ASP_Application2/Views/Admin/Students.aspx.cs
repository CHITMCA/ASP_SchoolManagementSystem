using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Application2.Views.Admin
{
    public partial class Students : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            ShowStudent();
            ShowTeacher();
            GetDepartment();
        }

        private void ShowStudent()
        {
            string query = "select *from Studenttbl";
            gridStudentList.DataSource = con.GetData(query);
            gridStudentList.DataBind();
        }
        private void ShowTeacher()
        {
            string query = "select *from teachertbl";
            DropTeacher.DataTextField = con.GetData(query).Columns["tid"].ToString();
            DropTeacher.DataSource = con.GetData(query);
            DropTeacher.DataBind();
        }
        private void GetDepartment()
        {
            string query = "select  *from Departmenttbl";
            DropDepartment.DataTextField = con.GetData(query).Columns["Depid"].ToString();
            DropDepartment.DataSource = con.GetData(query);
            DropDepartment.DataBind();
        }
        
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (SName.Value == "" || SEmail.Value == "" || SPhone.Value == "" || SAddress.Value == "")
                {
                    errMsg.InnerText = "Data Missing!!!";
                    
                }
                else
                {
                    string Name = SName.Value;
                    string Email = SEmail.Value;
                    string Phone = SPhone.Value;
                    string Address = SAddress.Value;
                    string Sdob = SDOB.Value.ToString().Substring(0, 10);
                    string Sgender = DropGender.SelectedValue;
                    string Pass = SPassword.Value;
                    int Department = Convert.ToInt32(DropDepartment.SelectedValue);
                    int Teacher = Convert.ToInt32(DropTeacher.SelectedItem);
                    string query = "insert into studenttbl values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')";
                    query = string.Format(query, Name, Email, Phone, Address, Sdob, Sgender, Pass, Department, Teacher);
                    con.SetData(query);
                    ShowStudent();                   
                    errMsg.InnerText = "Student Added!!!";
                    SName.Value = "";
                    SEmail.Value = "";
                    SPhone.Value = "";
                    SAddress.Value = "";
                    SPassword.Value = "";
                    DropDepartment.SelectedIndex = -1;
                    DropTeacher.SelectedIndex = -1;
                }
            }
            catch (Exception ex)
            {
                {
                    errMsg.InnerText = ex.Message;
                }
            }
        }

        int key = 0;
        protected void gridStudentList_SelectedIndexChanged(object sender, EventArgs e)
        {
            SName.Value = gridStudentList.SelectedRow.Cells[2].Text;
            SEmail.Value = gridStudentList.SelectedRow.Cells[3].Text;
            SPhone.Value = gridStudentList.SelectedRow.Cells[4].Text;
            SAddress.Value = gridStudentList.SelectedRow.Cells[5].Text;
            SDOB.Value = gridStudentList.SelectedRow.Cells[6].Text;
            DropGender.SelectedValue= gridStudentList.SelectedRow.Cells[7].Text;
            SPassword.Value = gridStudentList.SelectedRow.Cells[8].Text;
            DropDepartment.SelectedValue = gridStudentList.SelectedRow.Cells[9].Text;
            DropTeacher.SelectedValue = gridStudentList.SelectedRow.Cells[10].Text;

            if (SName.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(gridStudentList.SelectedRow.Cells[1].Text);
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                if (SName.Value == "" || SEmail.Value == "" || SPhone.Value == "" || SAddress.Value == "")
                {
                    errMsg.InnerText = "Data Missing!!!";
                }
                else
                {
                    string Name = SName.Value;
                    string Email = SEmail.Value;
                    string Phone = SPhone.Value;
                    string Address = SAddress.Value;
                    string Sdob = SDOB.Value.ToString().Substring(0, 10);
                    string Sgender = DropGender.SelectedValue;
                    string Pass = SPassword.Value;
                    int Department = Convert.ToInt32(DropDepartment.SelectedValue.ToString());
                    int Teacher = Convert.ToInt32(DropTeacher.SelectedValue.ToString());
                    string query = "update Studenttbl set stname='{0}', stemail='{1}',stphone='{2}', staddress='{3}', stdob='{4}', stgen='{5}', stpass='{6}',stdepartment='{7}', stteacher='{8}' where stId={9}";
                    query = string.Format(query, Name, Email, Phone, Address, Sdob, Sgender, Pass, Department, Teacher, gridStudentList.SelectedRow.Cells[1].Text);
                    con.SetData(query);
                    ShowStudent();
                    errMsg.InnerText = "Student Added!!!";
                    //SName.Value = "";                                                                   
                    //SEmail.Value = "";
                    //SPhone.Value = "";
                    //SAddress.Value = "";
                    //SPassword.Value = "";
                    //DropDepartment.SelectedIndex = -1;
                    //DropTeacher.SelectedIndex = -1;
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
                if (SName.Value == "" || SEmail.Value == "" || SPhone.Value == "" || SAddress.Value == "")
                {
                    errMsg.InnerText = "Data Missing!!!";
                }
                else
                {
                    string Name = SName.Value;
                    string Email = SEmail.Value;
                    string Phone = SPhone.Value;
                    string Address = SAddress.Value;
                    string Sdob = SDOB.Value.ToString().Substring(0, 10);
                    string Sgender = DropGender.SelectedValue;
                    string Pass = SPassword.Value;
                    int Department = Convert.ToInt32(DropDepartment.SelectedValue.ToString());
                    int Teacher = Convert.ToInt32(DropTeacher.SelectedItem.ToString());
                    string query = "delete from Studenttbl where stid={0}";
                    query = string.Format(query, gridStudentList.SelectedRow.Cells[1].Text);
                    con.SetData(query);
                    ShowStudent();
                    errMsg.InnerText = "Student Deleteted!!!";
                    //SName.Value = "";
                    //SEmail.Value = "";
                    //SPhone.Value = "";
                    //SAddress.Value = "";
                    //SPassword.Value = "";
                    //DropDepartment.SelectedIndex = -1;
                    //DropTeacher.SelectedIndex = -1;
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