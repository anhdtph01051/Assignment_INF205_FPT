<%@ Page Title="" Language="C#" MasterPageFile="~/Theme.master" AutoEventWireup="true" CodeFile="gioithieu.aspx.cs" Inherits="gioithieu" %>

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
</asp:Content>

