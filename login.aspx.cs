using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_dangnhap_Click(object sender, EventArgs e)
    {
        int i;
        checklogin KTUserPass = new checklogin();
        if (text_tendangnhap.Text == "" || text_matkhau.Text == "")
            WebMsgBox.Show("Bạn phải nhập vào Username và Password !");
        else
        {
            i = KTUserPass.Kiemtra(text_tendangnhap.Text, text_matkhau.Text);
            if (i == 0)
                WebMsgBox.Show("Username và Password không hợp lệ. Vui lòng nhập lại!");
            else
            Session["name"] = text_tendangnhap.Text;
            System.Threading.Thread.Sleep(5000);
            Response.Redirect("AdminCP.aspx");
        }
    }
}