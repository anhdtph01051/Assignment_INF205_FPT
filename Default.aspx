<%@ Page Title="" Language="C#" MasterPageFile="~/Theme.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <div id="textmenu" style="float:left; width:15%;">
    <span class="textlienhe">QUẦN ÁO NAM</span>
    </div>
    <div id="textmenu1" style="float:right;width:83%; margin-top:8px;">
    <div class="maumeti" style="background-color:#EBEBEB;height:18px;"></div>
    </div>
    <br />
    <br />
    <br />
    <table border="0" style="text-align:center;">
        <tr>
            <td width="210px" height="210px"><img src="shop/1.jpg" width="210px" height="210px" /></td>
            <td width="52px"></td>
            <td width="210px" height="210px"><img src="shop/2.jpg" width="210px" height="210px" /></td>
            <td width="52px"></td>
            <td width="210px" height="210px"><img src="shop/3.jpg" width="210px" height="210px" /></td>
            <td width="52px"></td>
            <td width="210px" height="210px"><img src="shop/4.jpg" width="210px" height="210px" /></td>
        </tr>
        <tr>
            <td class="namequanao" width="210px" height="70px">Áo khoác lông vũ Diesel hàng hiệu xuất khẩu màu nâu</td>
            <td width="52px"></td>
            <td class="namequanao" width="210px" height="70px">Áo khoác lông vũ Diesel hàng hiệu xuất khẩu màu nâu</td>
            <td width="52px"></td>
            <td class="namequanao" width="210px" height="70px">Áo khoác lông vũ Diesel hàng hiệu xuất khẩu màu nâu</td>
            <td width="52px"></td>
            <td class="namequanao" width="210px" height="70px">Áo khoác lông vũ Diesel hàng hiệu xuất khẩu màu nâu</td>
        </tr>
        <tr>
            <td class="price" width="210px" height="30px">920.000₫</td>
            <td width="52px"></td>
            <td class="price" width="210px" height="30px">920.000₫</td>
            <td width="52px"></td>
            <td class="price" width="210px" height="30px">920.000₫</td>
            <td width="52px"></td>
            <td class="price" width="210px" height="30px">920.000₫</td>
        </tr>
    </table>
    <br />
    <br />
    <div id="textmenu" style="float:left; width:15%;">
    <span class="textlienhe">GIÀY DÉP NAM</span>
    </div>
    <div id="textmenu1" style="float:right;width:83%; margin-top:8px;">
    <div class="maumeti" style="background-color:#EBEBEB;height:18px;"></div>
    </div>
    <br />
    <br />
    <br />
    <table border="0" style="text-align:center;">
        <tr>
            <td width="210px" height="210px"><img src="shop/5.jpg" width="210px" height="210px" /></td>
            <td width="52px"></td>
            <td width="210px" height="210px"><img src="shop/6.jpg" width="210px" height="210px" /></td>
            <td width="52px"></td>
            <td width="210px" height="210px"><img src="shop/7.jpg" width="210px" height="210px" /></td>
            <td width="52px"></td>
            <td width="210px" height="210px"><img src="shop/8.jpg" width="210px" height="210px" /></td>
        </tr>
        <tr>
            <td class="namequanao" width="210px" height="70px">Áo khoác lông vũ Diesel hàng hiệu xuất khẩu màu nâu</td>
            <td width="52px"></td>
            <td class="namequanao" width="210px" height="70px">Áo khoác lông vũ Diesel hàng hiệu xuất khẩu màu nâu</td>
            <td width="52px"></td>
            <td class="namequanao" width="210px" height="70px">Áo khoác lông vũ Diesel hàng hiệu xuất khẩu màu nâu</td>
            <td width="52px"></td>
            <td class="namequanao" width="210px" height="70px">Áo khoác lông vũ Diesel hàng hiệu xuất khẩu màu nâu</td>
        </tr>
        <tr>
            <td class="price" width="210px" height="30px">920.000₫</td>
            <td width="52px"></td>
            <td class="price" width="210px" height="30px">920.000₫</td>
            <td width="52px"></td>
            <td class="price" width="210px" height="30px">920.000₫</td>
            <td width="52px"></td>
            <td class="price" width="210px" height="30px">920.000₫</td>
        </tr>
    </table>
    <br />
    <br />
    <div id="textmenu" style="float:left; width:15%;">
    <span class="textlienhe">GIÀY DÉP NAM</span>
    </div>
    <div id="textmenu1" style="float:right;width:83%; margin-top:8px;">
    <div class="maumeti" style="background-color:#EBEBEB;height:18px;"></div>
    </div>
    <br />
    <br />
    <br />
    <table border="0" style="text-align:center;">
        <tr>
            <td width="210px" height="210px"><img src="shop/9.jpg" width="210px" height="210px" /></td>
            <td width="52px"></td>
            <td width="210px" height="210px"><img src="shop/10.jpg" width="210px" height="210px" /></td>
            <td width="52px"></td>
            <td width="210px" height="210px"><img src="shop/11.jpg" width="210px" height="210px" /></td>
            <td width="52px"></td>
            <td width="210px" height="210px"><img src="shop/12.jpg" width="210px" height="210px" /></td>
        </tr>
        <tr>
            <td class="namequanao" width="210px" height="70px">Áo khoác lông vũ Diesel hàng hiệu xuất khẩu màu nâu</td>
            <td width="52px"></td>
            <td class="namequanao" width="210px" height="70px">Áo khoác lông vũ Diesel hàng hiệu xuất khẩu màu nâu</td>
            <td width="52px"></td>
            <td class="namequanao" width="210px" height="70px">Áo khoác lông vũ Diesel hàng hiệu xuất khẩu màu nâu</td>
            <td width="52px"></td>
            <td class="namequanao" width="210px" height="70px">Áo khoác lông vũ Diesel hàng hiệu xuất khẩu màu nâu</td>
        </tr>
        <tr>
            <td class="price" width="210px" height="30px">920.000₫</td>
            <td width="52px"></td>
            <td class="price" width="210px" height="30px">920.000₫</td>
            <td width="52px"></td>
            <td class="price" width="210px" height="30px">920.000₫</td>
            <td width="52px"></td>
            <td class="price" width="210px" height="30px">920.000₫</td>
        </tr>
    </table>
</asp:Content>

