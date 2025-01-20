using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Application2.Views.Admin
{
    public partial class Schedules : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowSchedule();
                GetDepartment();
            }
        }
        private void ShowSchedule()
        {
            string query = "select schid as id, Department as dep, Day as day,[8to9] as First, [9to10] as Second, [10to11] as Third, [11to12] as Fourth, [12to13] as Fifth from Scheduletbl";
            GridSchedulesList.DataSource = con.GetData(query);
            GridSchedulesList.DataBind();
        }

        private void GetDepartment()
        {
            string query = "select  *from Departmenttbl";
            DepName.DataTextField= con.GetData(query).Columns["DepName"].ToString();
            DepName.DataValueField = con.GetData(query).Columns["DepId"].ToString();
            DepName.DataSource = con.GetData(query);
            DepName.DataBind();
        }
       

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (DepName.SelectedIndex == -1 || dropDays.SelectedIndex == -1 || drop8AM.SelectedIndex == -1 || drop9AM.SelectedIndex == -1 || drop10AM.SelectedIndex == -1 || drop11AM.SelectedIndex == -1 ||  drop12AM.SelectedIndex == -1 )
                {
                    errMsg.InnerText = "Data Missing!!!";
                }
                else
                {
                    int Department = Convert.ToInt32(DepName.SelectedValue.ToString());
                    string Day = dropDays.SelectedItem.ToString();
                    string Sub1 = drop8AM.SelectedItem.ToString();                    
                    string Sub2 = drop9AM.SelectedItem.ToString();
                    string Sub3 = drop10AM.SelectedItem.ToString();
                    string Sub4 = drop11AM.SelectedItem.ToString();
                    string Sub5 = drop12AM.SelectedItem.ToString();
                    string query = "insert into Scheduletbl values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')";
                    query = string.Format(query, Department, Day, Sub1, Sub2, Sub3, Sub4, Sub5);
                    con.SetData(query);
                    ShowSchedule();
                    errMsg.InnerText = "Schedule Added!!!";
                    DepName.SelectedIndex = -1;
                    dropDays.SelectedIndex = -1;
                    drop8AM.SelectedIndex = -1;
                    drop9AM.SelectedIndex = -1;
                    drop10AM.SelectedIndex = -1;
                    drop11AM.SelectedIndex = -1;
                    drop12AM.SelectedIndex = -1;
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
        protected void GridSchedulesList_SelectedIndexChanged(object sender, EventArgs e)
        {
            DepName.SelectedValue = GridSchedulesList.SelectedRow.Cells[2].Text;
            dropDays.SelectedValue = GridSchedulesList.SelectedRow.Cells[3].Text;
            drop8AM.SelectedValue = GridSchedulesList.SelectedRow.Cells[4].Text;
            drop9AM.SelectedValue = GridSchedulesList.SelectedRow.Cells[5].Text;
            drop10AM.SelectedValue = GridSchedulesList.SelectedRow.Cells[6].Text;
            drop11AM.SelectedValue = GridSchedulesList.SelectedRow.Cells[7].Text;
            drop12AM.SelectedValue = GridSchedulesList.SelectedRow.Cells[8].Text;
          
            if (DepName.SelectedIndex == -1)
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(GridSchedulesList.SelectedRow.Cells[1].Text);
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                if (DepName.SelectedIndex == -1 || dropDays.SelectedIndex == -1 || drop8AM.SelectedIndex == -1 || drop9AM.SelectedIndex == -1 || drop10AM.SelectedIndex == -1 || drop11AM.SelectedIndex == -1 || drop12AM.SelectedIndex == -1 )
                {
                    errMsg.InnerText = "Data Missing!!!";
                }
                else
                {
                    int Department = Convert.ToInt32(DepName.SelectedValue.ToString());
                    string Day = dropDays.SelectedItem.ToString();
                    string Sub1 = drop8AM.SelectedItem.ToString();
                    string Sub2 = drop9AM.SelectedItem.ToString();
                    string Sub3 = drop10AM.SelectedItem.ToString();
                    string Sub4 = drop11AM.SelectedItem.ToString();
                    string Sub5 = drop12AM.SelectedItem.ToString();
                    string query = "update Scheduletbl set Department='{0}', Day='{1}',8to9='{2}', 9to10='{3}', 10to11='{4}', 11to12='{5}', 12to13='{6}' where schId={7}";
                    query = string.Format(query, Department, Day, Sub1, Sub2, Sub3, Sub4, Sub5, GridSchedulesList.SelectedRow.Cells[1].Text);
                    con.SetData(query);
                    ShowSchedule();
                    errMsg.InnerText = "Schedule Added!!!";
                    DepName.SelectedIndex = -1;
                    dropDays.SelectedIndex = -1;
                    drop8AM.SelectedIndex = -1;
                    drop9AM.SelectedIndex = -1;
                    drop10AM.SelectedIndex = -1;
                    drop11AM.SelectedIndex = -1;
                    drop12AM.SelectedIndex = -1;
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
                if (DepName.SelectedIndex == -1 || dropDays.SelectedIndex == -1 || drop8AM.SelectedIndex == -1 || drop9AM.SelectedIndex == -1 || drop10AM.SelectedIndex == -1 || drop11AM.SelectedIndex == -1 || drop12AM.SelectedIndex == -1)
                {
                    errMsg.InnerText = "Data Missing!!!";
                }
                else
                {
                    int Department = Convert.ToInt32(DepName.SelectedValue.ToString());
                    string Day = dropDays.SelectedItem.ToString();
                    string Sub1 = drop8AM.SelectedItem.ToString();
                    string Sub2 = drop9AM.SelectedItem.ToString();
                    string Sub3 = drop10AM.SelectedItem.ToString();
                    string Sub4 = drop11AM.SelectedItem.ToString();
                    string Sub5 = drop12AM.SelectedItem.ToString();
                    string query = "delete from Scheduletbl  where schId={0}";
                    query = string.Format(query,  GridSchedulesList.SelectedRow.Cells[1].Text);
                    con.SetData(query);
                    ShowSchedule();
                    errMsg.InnerText = "Schedule Added!!!";
                    DepName.SelectedIndex = -1;
                    dropDays.SelectedIndex = -1;
                    drop8AM.SelectedIndex = -1;
                    drop9AM.SelectedIndex = -1;
                    drop10AM.SelectedIndex = -1;
                    drop11AM.SelectedIndex = -1;
                    drop12AM.SelectedIndex = -1;
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