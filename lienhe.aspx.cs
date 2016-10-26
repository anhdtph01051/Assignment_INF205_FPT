using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lienhe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Session["name"] as string))
            {
                link_control.Visible = true;
                Label1.Visible = true;
                Label2.Text = "Xin chào ";
                Label3.Text = Session["name"].ToString();
                Label4.Text = "đã quay trở lại.";
            }
            else
            {
                link_control.Visible = false;
                Label1.Visible = false;
                Label2.Text = "Xin chào ";
                Label3.Text = "Khách.";
                Label4.Visible = false;
                link_out.Visible = false;
            }
        }
    }

    protected void link_out_Click(object sender, EventArgs e)
    {
        Session.Remove("name");
        Session["name"] = null;
        System.Threading.Thread.Sleep(3000);
        Response.Redirect("Default.aspx");
    }
}