<%@ Page Title="" Language="C#" MasterPageFile="~/Theme.master" AutoEventWireup="true" CodeFile="lienhe.aspx.cs" Inherits="lienhe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="sesion">
                <asp:LinkButton ID="link_control" runat="server" CssClass="control" PostBackUrl="~/AdminCP.aspx">Control Pannel</asp:LinkButton>
                <asp:Label ID="Label1" runat="server" Text="Label">-</asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Xin chào"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Tùng Anh" CssClass="ssnamecheck"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="đã quay trở lại!"></asp:Label>
        <asp:LinkButton ID="link_out" runat="server" CssClass="control1" OnClick="link_out_Click">Thoát</asp:LinkButton>
    </div>
    <div id="content3" style="width:100%; height:70px;">
    </div>
    <span class="textlienhe">THÔNG TIN LIÊN HỆ</span><br />
    <iframe src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d3724.5433823787225!2d105.80031531450442!3d21.01093318600804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e0!4m3!3m2!1d21.011913399999997!2d105.8012018!4m5!1s0x3135aca044fd294d%3A0xa939ea6d75db62a3!2zMTM2IEhvw6BuZyBOZ8OibiwgVHJ1bmcgSMOyYSBOaMOibiBDaMOtbmgsIFRydW5nIEhvw6AsIFRoYW5oIFh1w6JuLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!3m2!1d21.009957399999998!2d105.8038062!5e0!3m2!1svi!2s!4v1475604008326" width="700" height="300" frameborder="0" style="border:0" allowfullscreen></iframe><br />
    <p class="styletext">Mọi thông tin liên hệ tới anhdtph01051@fpt.edu.vn để được trợ giúp tối ưu nhất.</p><br />
    <div class="stylelienhe">LIÊN HỆ</div>
    <br />
            <input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Tên của bạn">
            <br />
            <br />
            <input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="Email của bạn">
            <br />
            <br />
            <input type="tel" name="phone" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-tel wpcf7-validates-as-required wpcf7-validates-as-tel" aria-required="true" aria-invalid="false" placeholder="Số điện thoại">
            <br />
            <br />
            <input type="text" name="your-subject" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false" placeholder="Tiêu đề">
            <br />
            <br />
            <textarea name="your-message" rows="10" class="auto-style4" aria-invalid="false" placeholder="Nội dung"></textarea>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="GỬI" Width="100px" OnClientClick="alert (&quot;Hình như gửi được rồi đó! Cảm ơn bạn.&quot;);" />
</asp:Content>

