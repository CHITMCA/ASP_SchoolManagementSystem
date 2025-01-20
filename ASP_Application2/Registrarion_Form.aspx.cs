using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace ASP_SchoolManagementSystem
{
    public partial class Registrarion_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }        
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=SchoolManagementSystem;Integrated Security=True");

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Student values(@id,@n,@gndr,@m,@e,@d,@b,@c,@img1)", con);
                cmd.Parameters.AddWithValue("@id", txtID.Text);
                cmd.Parameters.AddWithValue("@n", txtname.Text);
                string gender = "Male";
                if (rdfemale.Checked)
                { gender = "Female"; }
                cmd.Parameters.AddWithValue("@gndr", gender);
                cmd.Parameters.AddWithValue("@m", txtMobile.Text);
                cmd.Parameters.AddWithValue("@e", txtEmail.Text);
                cmd.Parameters.AddWithValue("@d", txtDate.Text);
                cmd.Parameters.AddWithValue("@b", DropBtch.Text);

                string course = "";
                if (Checkdotnet.Checked)
                { course = course + ", " + Checkdotnet.Text; }
                if (Checkjava.Checked)
                { course = course + ", " + Checkjava.Text; }
                if (CheckC.Checked)
                { course = course + ", " + CheckC.Text; }
                if (CheckPython.Checked)
                { course = course + ", " + CheckPython.Text; }
                course = course.TrimStart(',');
                cmd.Parameters.AddWithValue("@c", course);

                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/Photos/" + fileName));
                cmd.Parameters.AddWithValue("@img1", "Photos/" + fileName);

                int i = cmd.ExecuteNonQuery();
                //GridView1.DataBind();
                if (i > 0)
                {
                    //Response.Write("<script> alert('Registration Sucess')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','Form has been inserted successfuly','success')", true);

                }
                con.Close();
            }
            catch (Exception ex)
            {
                //Response.Write("<script> alert('Please enter correct or data in each control')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registeration Failed..','error')", true);

            }
        }        

        //protected void btnShow_Click1(object sender, EventArgs e)
        //{
        //    SqlCommand cmd = new SqlCommand("select *from student", con);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    GridView1.DataSource = ds;
        //    GridView1.DataBind();
        //}
    }
}