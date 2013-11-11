<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 style="height: 27px">Contact Us</h3>
    <h3 style="height: 46px">
        <asp:Label ID="Label1" runat="server" Text="Write A Message:"></asp:Label>
    </h3>
    <h3 style="height: 108px">
        <asp:TextBox ID="TextBox1" runat="server" Height="134px" Width="318px"></asp:TextBox>
    </h3>
    <p style="height: 108px">&nbsp;</p>
    <p style="height: 108px">
        <asp:Button ID="Button1" runat="server" Text="Send" />
    </p>
    <p style="height: 108px">&nbsp;</p>
</asp:Content>

