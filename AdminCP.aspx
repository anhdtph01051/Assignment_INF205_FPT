<%@ Page Title="" Language="C#" MasterPageFile="~/Theme.master" AutoEventWireup="true" CodeFile="AdminCP.aspx.cs" Inherits="AdminCP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="sesion">
                <asp:LinkButton ID="link_control" runat="server" CssClass="control" PostBackUrl="~/AdminCP.aspx">Control Pannel</asp:LinkButton>
                <asp:Label ID="Label1" runat="server" Text="Label">-</asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Xin chào"></asp:Label>
                <asp:Label ID="Label3" runat="server" CssClass="ssnamecheck"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="đã quay trở lại!"></asp:Label>
                <asp:LinkButton ID="link_out" runat="server" CssClass="control1" OnClick="link_out_Click">Thoát</asp:LinkButton>
    </div>
    <div id="ads" style="width:70%; height:30px; float:right;">
        <marquee>Cảm ơn các bạn đã sử dụng Hệ Thống Webshop by AnhDTPH01051@fpt.edu.vn</marquee>
    </div>
    <div id="content3" style="width:100%; height:70px;">
    </div>
    <div id="control">
        <div id="menucontrol">
            <div id="menu">
                <table border="0" style="width:100%; height:100%; text-align:center;">
                    <tr>
                        <td>Menu Control</td>
                    </tr>
                </table>            </div>
            <asp:Button ID="btn_sanpham" runat="server" Text="SẢN PHẨM" CssClass="buttoncontrol" OnClick="btn_sanpham_Click" />
            <div id="spacepx" style="height:1px;"></div>
            <asp:Button ID="bnt_khachhang" runat="server" Text="KHÁCH HÀNG" CssClass="buttoncontrol" OnClick="bnt_khachhang_Click" />
            <div id="spacepx" style="height:1px;"></div>
            <asp:Button ID="bnt_hoadon" runat="server" Text="HÓA ĐƠN" CssClass="buttoncontrol" OnClick="bnt_hoadon_Click" />
        </div>
        <div id="showcontrol">
            <asp:GridView ID="grid_sanpham" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="grid_sanpham_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField CommandName="Select" Text="Chọn" />
                    <asp:BoundField DataField="MaSP" HeaderText="Mã Sản Phẩm" />
                    <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" />
                    <asp:BoundField DataField="Prince" HeaderText="Đơn Giá" />
                    <asp:BoundField DataField="DVT" HeaderText="Đơn vị tính" />
                    <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" />
                    <asp:BoundField DataField="TenLSP" HeaderText="Loại Sản Phẩm" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:GridView ID="grid_khachhang" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="100%">
             <Columns>
                 <asp:BoundField DataField="MaKH" HeaderText="Mã Khách Hàng" />
                 <asp:BoundField DataField="TenKH" HeaderText="Tên Khách Hàng" />
                 <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" />
                 <asp:BoundField DataField="Phone" HeaderText="Số Điện Thoại" />
                 <asp:BoundField DataField="Email" HeaderText="Email" />
             </Columns>
             <FooterStyle BackColor="White" ForeColor="#000066" />
             <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
             <RowStyle ForeColor="#000066" />
             <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#007DBB" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#00547E" />
         </asp:GridView>
            <asp:GridView ID="grid_hoadon" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="100%">
             <Columns>
                 <asp:BoundField DataField="MaHD" HeaderText="Mã Hóa Đơn" />
                 <asp:BoundField DataField="Ngay" HeaderText="Ngày Lập" />
                 <asp:BoundField DataField="TriGia" HeaderText="Tổng Giá Trị" />
                 <asp:BoundField DataField="TenKH" HeaderText="Tên Khách Hàng" />
             </Columns>
             <FooterStyle BackColor="White" ForeColor="#000066" />
             <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
             <RowStyle ForeColor="#000066" />
             <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#007DBB" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#00547E" />
         </asp:GridView>
            <div id="spacegrid" style="width:100%; height:50px;"></div>
            <div id="controlbutton">
                <div id="buttonspace" style="width:100%; height:20px;"></div>
                <center>
                <table border="0">
                    <tr>
                        <td><asp:Label ID="lbl_masp" runat="server" Text="Mã Sản Phẩm:" CssClass="fontdep"></asp:Label></td>
                        <td><asp:TextBox ID="txt_masp" runat="server" Enabled="False" CssClass="converttext"></asp:TextBox></td>
                        <td></td>
                        <td><asp:Label ID="lbl_tensp" runat="server" Text="Tên Sản Phẩm:" CssClass="fontdep"></asp:Label></td>
                        <td><asp:TextBox ID="txt_tensp" runat="server" CssClass="converttext"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lbl_gia" runat="server" Text="Giá:" CssClass="fontdep"></asp:Label></td>
                        <td><asp:TextBox ID="txt_gia" runat="server" CssClass="converttext"></asp:TextBox></td>
                        <td></td>
                        <td><asp:Label ID="lbl_dvt" runat="server" Text="Đơn vị tính:" CssClass="fontdep"></asp:Label></td>
                        <td><asp:TextBox ID="txt_dvt" runat="server" CssClass="converttext"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lbl_soluong" runat="server" Text="Số Lượng:" CssClass="fontdep"></asp:Label></td>
                        <td><asp:TextBox ID="txt_soluong" runat="server" CssClass="converttext"></asp:TextBox></td>
                        <td></td>
                        <td><asp:Label ID="lbl_tenlsp" runat="server" Text="Tên Loại Sản Phẩm:" CssClass="fontdep"></asp:Label></td>
                        <td><asp:DropDownList ID="drop_loaisanpham" runat="server" DataTextField="TenLSP" DataValueField="MaLSP" OnSelectedIndexChanged="drop_loaisanpham_SelectedIndexChanged" CssClass="converttext" Width="150px"></asp:DropDownList></td>
                    </tr>
                    </table>
                    </center>
                <div id="buttonspace" style="width:100%; height:30px;"></div>
                <div id="buttontroll">
                    <center>
                    <table border="0">
                        <tr>
                            <td><asp:Button ID="btn_clear" runat="server" Text="Clear Text" CssClass="buttonedit" OnClick="btn_clear_Click" /></td>
                            <td style="width:20px;"></td>
                            <td><asp:Button ID="btn_them" runat="server" Text="Thêm" CssClass="buttonedit" OnClick="btn_them_Click" /></td>
                            <td style="width:20px;"></td>
                            <td><asp:Button ID="btn_sua" runat="server" Text="Sửa" CssClass="buttonedit" OnClick="btn_sua_Click" /></td>
                            <td style="width:20px;"></td>
                            <td><asp:Button ID="btn_xoa" runat="server" Text="Xóa" CssClass="buttonedit" OnClick="btn_xoa_Click" /></td>
                        </tr>
                    </table>
                    </center><br />
                    <span class="chuy">*Chú ý:</span> <span class="hienthi">khi thêm 1 sản phẩm mới bạn nên click vào Clear Text để tránh việc lỗi đáng tiếc xảy ra!</span>
                    <div id="buttonspace" style="width:100%; height:20px;"></div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>

