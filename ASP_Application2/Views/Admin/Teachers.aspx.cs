using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Application2.Views.Admin
{
    public partial class Teachers : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con=new Models.Functions();
            ShowTeacher();
        }
        private void ShowTeacher()
        {
            string query = "select *from teachertbl";
            TeacherList.DataSource = con.GetData(query);
            TeacherList.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (TName.Value == "" || Temail.Value == "" || TSalary.Value == "" || TPassword.Value == "")
                {
                    errMsg.InnerText = "Data Missing!!!";
                }
                else
                {
                    string Name=TName.Value;
                    string Email=Temail.Value;
                    string Salary=TSalary.Value;
                    string Password=TPassword.Value;
                    string query = "insert into teachertbl values('{0}','{1}','{2}','{3}','{4}')";
                    query = string.Format(query, Name, Email, Tdob.Value.ToString().Substring(0,10), Salary, Password);
                    con.SetData(query); 
                    ShowTeacher();
                    errMsg.InnerText = "Teacher Added!!!";
                    TName.Value = "";
                    Temail.Value = "";
                    Tdob.Value = "";
                    TSalary.Value="";
                    TPassword.Value = "";
                }
            }
            catch (Exception ex)
            {
                {
                    errMsg.InnerText = ex.Message;
                }
            }
        }
        int Key = 0;
        protected void TeacherList_SelectedIndexChanged(object sender, EventArgs e)
        {
            TName.Value = TeacherList.SelectedRow.Cells[2].Text;
            Temail.Value = TeacherList.SelectedRow.Cells[3].Text;
            Tdob.Value = TeacherList.SelectedRow.Cells[4].Text;
            TSalary.Value = TeacherList.SelectedRow.Cells[5].Text;
            TPassword.Value = TeacherList.SelectedRow.Cells[6].Text;

            if(TName.Value=="")
            {
                Key = 0;
            }
            else
            {
                Key=Convert.ToInt32(TeacherList.SelectedRow.Cells[1].Text);
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                if (TName.Value == "" || Temail.Value == "" || TSalary.Value == "" || TPassword.Value == "")
                {
                    errMsg.InnerText = "Data Missing!!!";
                }
                else
                {
                    string Name = TName.Value;
                    string Email = Temail.Value;
                    string Salary = TSalary.Value;
                    string Password = TPassword.Value;
                    string query = "update teachertbl set TName='{0}',Temail='{1}',Tdob='{2}',TSalary='{3}',TPass='{4}' where TId={5}";
                    query = string.Format(query, Name, Email, Tdob.Value.ToString().Substring(0, 10), Salary, Password, TeacherList.SelectedRow.Cells[1].Text);
                    con.SetData(query);
                    ShowTeacher();
                    errMsg.InnerText = "Teacher Updated!!!";
                    //TName.Value = "";
                    //Temail.Value = "";
                    //Tdob.Value = "";
                    //TSalary.Value = "";
                    //TPassword.Value = "";
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
                if (TName.Value == "" || Temail.Value == "" || TSalary.Value == "" || TPassword.Value == "")
                {
                    errMsg.InnerText = "Missing Data!!!";
                }
                else
                {
                    string Name = TName.Value;
                    string Email = Temail.Value;
                    string Salary = TSalary.Value;
                    string Password = TPassword.Value;
                    string query = "delete from teachertbl where tid={0}";
                    query = string.Format(query, TeacherList.SelectedRow.Cells[1].Text);
                    con.SetData(query);
                    ShowTeacher();
                    errMsg.InnerText = "Teacher Deleteted!!!";
                    TName.Value = "";
                    Temail.Value = "";
                    Tdob.Value = "";
                    TSalary.Value = "";
                    TPassword.Value = "";
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