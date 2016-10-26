using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dangky : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\fpoly\Desktop\Nhom3_AnhDT_PH01051_AssgimentHT_INF205\Code\Web\Database\QLBH2.mdf;Integrated Security=True;Connect Timeout=30");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbl_ok.Visible = false;
        }
    }

    protected void btn_dangky_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(text_hovaten.Text) || String.IsNullOrEmpty(text_tendangnhap.Text) || String.IsNullOrEmpty(text_matkhau.Text) || String.IsNullOrEmpty(text_email.Text))
        {
            //thiếu dữ liệu
            WebMsgBox.Show("Vui lòng điền dữ liệu");
        }
        else { 
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            string sql = "insert into login (hovaten,username,pw,email) values(N'" + text_hovaten.Text + "','" + text_tendangnhap.Text + "','" + text_matkhau.Text + "' ,'" + text_email.Text + "')";
            cmd.Connection = conn;
            cmd.CommandText = sql;
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            conn.Close();
            WebMsgBox.Show("Chắc chắn bạn đúng?");
            lbl_ok.Visible = true;
            System.Threading.Thread.Sleep(3000);
            lbl_ok.Text = "Bạn đã đúng!";
            text_hovaten.Text = "";
            text_tendangnhap.Text = "";
            text_matkhau.Text = "";
            text_email.Text = "";
        }
    }
}