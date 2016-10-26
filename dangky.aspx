<%@ Page Title="" Language="C#" MasterPageFile="~/Theme.master" AutoEventWireup="true" CodeFile="dangky.aspx.cs" Inherits="dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="dangky">
            <div id="dangkytext" style="width:100%; height:30px;"></div>
        <p class="textreg">Đăng Ký Thông Tin</p>
        <br />
        <br />
        <center>
        <table border="0">
            <tr>
                <td>Họ và tên:</td>
                <td></td>
                <td><asp:TextBox ID="text_hovaten" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Tên đăng nhập:</td>
                <td></td>
                <td><asp:TextBox ID="text_tendangnhap" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Mật khẩu:</td>
                <td></td>
                <td><asp:TextBox ID="text_matkhau" TextMode="Password" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td></td>
                <td><asp:TextBox ID="text_email" runat="server" TextMode="Email"></asp:TextBox></td>

            </tr>
            <tr>
                <td height="50px"></td>
                <td></td>
                <td><asp:Label ID="lbl_ok" runat="server" ForeColor="Blue"></asp:Label></td>
            </tr>
            <tr>
                <td class="link"><a href="Default.aspx">Quên mật khẩu?</a></td>
                <td></td>
                <td><center><asp:Button ID="btn_dangky" runat="server" Text="Đăng Ký" OnClick="btn_dangky_Click" /></center></td>
            </tr>
        </table>
            </center>
    </div>
</asp:Content>

