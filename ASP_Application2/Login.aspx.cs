using ASP_Application2.Models;
using ASP_Application2.Views.Admin;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Application2
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions con = new Models.Functions();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TutorLoginBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (userNametxt.Text == "" || Passwordtxt.Text == "")
                {
                    errMsg.InnerText = "Data Missing!!!";
                }
                else
                {
                    string user = userNametxt.Text;
                    string pass = Passwordtxt.Text;
                    string query = "select *from Login where user='" + user + "' or password='" + pass + "'";
                    query = string.Format(query, user, pass);
                    con.SetData(query);
                    //cmd.Parameters.AddWithValue("@username", userNametxt.Text);
                    //cmd.Parameters.AddWithValue("@password", Passwordtxt.Text);

                    Functions fs=new Functions();
                    
                    DataTable dt= fs.GetData(query);
                    if (dt.Rows.Count > 0)
                    {
                       ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "SuccessLogin();", true);
                       // Response.Write("<script>alert('Login Successfull')</script>");
                        //Session["tutor_username"] = userNametxt.Text;
                        Response.Redirect("Views/Admin/Schedules.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ErrorLogin();", true);
                       //Response.Write("<script>alert('Username or Password is incorrect')</script>");

                    }

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


    
