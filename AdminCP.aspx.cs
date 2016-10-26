using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminCP : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=qlbh2;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!String.IsNullOrEmpty(Session["name"] as string))
            {

                Label2.Text = "Xin chào";
                Label3.Text = Session["name"].ToString();
                Label4.Text = "đã quay trở lại.";

            }
            else
            {
                WebMsgBox.Show("Phát hiện gian lận - KILL NOW!!!!");
                link_control.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Text = "Error";
                Label4.Visible = false;
                System.Threading.Thread.Sleep(5000);
                Response.Redirect("Default.aspx");
                
            }
            lbl_masp.Visible = false;
            txt_masp.Visible = false;
            lbl_tensp.Visible = false;
            txt_tensp.Visible = false;
            lbl_gia.Visible = false;
            txt_gia.Visible = false;
            lbl_dvt.Visible = false;
            txt_dvt.Visible = false;
            lbl_soluong.Visible = false;
            txt_soluong.Visible = false;
            lbl_tenlsp.Visible = false;
            drop_loaisanpham.Visible = false;
            btn_clear.Visible = false;
            btn_them.Visible = false;
            btn_sua.Visible = false;
            btn_xoa.Visible = false;
            grid_sanpham.Visible = false;
            grid_khachhang.Visible = false;
            grid_hoadon.Visible = false;


        }
    }

    protected void btn_sanpham_Click(object sender, EventArgs e)
    {
        load();
        loaddroploaisanpham();
        lbl_masp.Visible = true;
        txt_masp.Visible = true;
        lbl_tensp.Visible = true;
        txt_tensp.Visible = true;
        lbl_gia.Visible = true;
        txt_gia.Visible = true;
        lbl_dvt.Visible = true;
        txt_dvt.Visible = true;
        lbl_soluong.Visible = true;
        txt_soluong.Visible = true;
        lbl_tenlsp.Visible = true;
        drop_loaisanpham.Visible = true;
        btn_clear.Visible = true;
        btn_them.Visible = true;
        btn_sua.Visible = true;
        btn_xoa.Visible = true;
        grid_sanpham.Visible = true;
        grid_khachhang.Visible = false;
        grid_hoadon.Visible = false;

    }

    protected void link_out_Click(object sender, EventArgs e)
    {
        Session.Remove("name");
        Session["name"] = null;
        System.Threading.Thread.Sleep(3000);
        Response.Redirect("Default.aspx");
    }

    protected void bnt_khachhang_Click(object sender, EventArgs e)
    {
        load1();
        lbl_masp.Visible = false;
        txt_masp.Visible = false;
        lbl_tensp.Visible = false;
        txt_tensp.Visible = false;
        lbl_gia.Visible = false;
        txt_gia.Visible = false;
        lbl_dvt.Visible = false;
        txt_dvt.Visible = false;
        lbl_soluong.Visible = false;
        txt_soluong.Visible = false;
        lbl_tenlsp.Visible = false;
        drop_loaisanpham.Visible = false;
        btn_clear.Visible = false;
        btn_them.Visible = false;
        btn_sua.Visible = false;
        btn_xoa.Visible = false;
        grid_sanpham.Visible = false;
        grid_khachhang.Visible = true;
        grid_hoadon.Visible = false;
    }

    protected void bnt_hoadon_Click(object sender, EventArgs e)
    {
        load2();
        lbl_masp.Visible = false;
        txt_masp.Visible = false;
        lbl_tensp.Visible = false;
        txt_tensp.Visible = false;
        lbl_gia.Visible = false;
        txt_gia.Visible = false;
        lbl_dvt.Visible = false;
        txt_dvt.Visible = false;
        lbl_soluong.Visible = false;
        txt_soluong.Visible = false;
        lbl_tenlsp.Visible = false;
        drop_loaisanpham.Visible = false;
        btn_clear.Visible = false;
        btn_them.Visible = false;
        btn_sua.Visible = false;
        btn_xoa.Visible = false;
        grid_sanpham.Visible = false;
        grid_khachhang.Visible = false;
        grid_hoadon.Visible = true;
    }
    void loaddroploaisanpham()
    {
        SqlDataAdapter ad = new SqlDataAdapter("select* from LoaiSanPham", conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        drop_loaisanpham.DataSource = ds;
        drop_loaisanpham.DataBind();
    }

    protected void drop_loaisanpham_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void grid_sanpham_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        int row = grid_sanpham.SelectedIndex;
        conn.Open();
        string sql = "Select * from SanPham";
        SqlDataAdapter da = new SqlDataAdapter(sql, conn);
        da.Fill(dt);
        conn.Close();
        txt_masp.Text = dt.Rows[row][0].ToString();
        txt_tensp.Text = dt.Rows[row][1].ToString();
        txt_gia.Text = dt.Rows[row][2].ToString();
        txt_dvt.Text = dt.Rows[row][3].ToString();
        txt_soluong.Text = dt.Rows[row][4].ToString();
        drop_loaisanpham.SelectedValue = dt.Rows[row][5].ToString();
    }

    protected void btn_clear_Click(object sender, EventArgs e)
    {
            txt_masp.Text = "";
            txt_tensp.Text = "";
            txt_gia.Text = "";
            txt_dvt.Text = "";
            txt_soluong.Text = "";
    }

    protected void btn_them_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(txt_tensp.Text) || String.IsNullOrEmpty(txt_gia.Text) || String.IsNullOrEmpty(txt_dvt.Text) || String.IsNullOrEmpty(txt_soluong.Text))
        {
            //thieeus du lieu
            WebMsgBox.Show("Vui lòng điền dữ liệu!");
        }
        else
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            string sql = "insert into SanPham values(N'" + txt_tensp.Text + "','" + txt_gia.Text + "',N'"
                + txt_dvt.Text + "','" + txt_soluong.Text + "','" + drop_loaisanpham.SelectedValue.ToString() + "')";
            cmd.Connection = conn;
            cmd.CommandText = sql;
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            conn.Close();
            WebMsgBox.Show("Chúc mừng, Bạn đã thêm thành công!");
            load();
        }
    }

    protected void btn_sua_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(txt_tensp.Text) || String.IsNullOrEmpty(txt_gia.Text) || String.IsNullOrEmpty(txt_dvt.Text) || String.IsNullOrEmpty(txt_soluong.Text))
        {
            //thieeus du lieu
            WebMsgBox.Show("Vui lòng điền dữ liệu");
        }
        else
        {

            conn.Open();
            SqlCommand cmd = new SqlCommand();
            string sql = "Update SanPham set TenSP=N'" + txt_tensp.Text + "',Prince='" + txt_gia.Text + "',DVT=N'" + txt_dvt.Text + "',SoLuong='" + txt_soluong.Text + "',TenLSP='" + drop_loaisanpham.SelectedValue + "' where MaSP='" + txt_masp.Text + "'";
            cmd.Connection = conn;
            cmd.CommandText = sql;
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            conn.Close();
            load();
            WebMsgBox.Show("Chúc mừng, Bạn đã sửa thành công!");
        }
    }

    protected void btn_xoa_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(txt_masp.Text))
        {
            WebMsgBox.Show("Chọn sản phẩm cần xóa?");
        }
        else
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            string sql = "Delete SanPham where MaSP='" + txt_masp.Text + "'";
            cmd.Connection = conn;
            cmd.CommandText = sql;
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            conn.Close();
            WebMsgBox.Show("Xóa thành công!");
            load();
        }
    }
    void load()
    {
        SqlDataAdapter ad = new SqlDataAdapter("select MaSP, TenSP, Prince, DVT, SoLuong, LoaiSanPham.TenLSP as TenLSP from SanPham, LoaiSanPham where SanPham.TenLSP = LoaiSanPham.MaLSP", conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        grid_sanpham.DataSource = ds;
        grid_sanpham.DataBind();
    }
    void load1()
    {
        SqlDataAdapter ad = new SqlDataAdapter("Select MaKH,TenKH,DiaChi,Phone,Email from KhachHang", conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        grid_khachhang.DataSource = ds;
        grid_khachhang.DataBind();
    }
    void load2()
    {
        SqlDataAdapter ad = new SqlDataAdapter("Select MaHD,Ngay,TriGia, KhachHang.TenKH as TenKH from HoaDon, KhachHang where KhachHang.MaKH = HoaDon.MaKH", conn);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        grid_hoadon.DataSource = ds;
        grid_hoadon.DataBind();
    }
}