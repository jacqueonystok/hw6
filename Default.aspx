<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3> List of Alcohol Records</h3>
        
        <asp:GridView 
            ID="GridView1" 
            runat="server" 
            AllowPaging="True"
             AllowSorting="True" 
            AutoGenerateColumns="False"
             DataKeyNames="AlcoholID" 
            DataSourceID="SqlDataSource1"
            cssClass="cssgridview"
            >

        <Columns>
            <asp:BoundField DataField="AlcoholName" HeaderText="Alcohol Name" SortExpression="AlcoholName" />
            <asp:HyperLinkField DataNavigateUrlFields="AlcoholID" DataNavigateUrlFormatString="detailsview.aspx?AlcoholID={0}" SortExpression="AlcoholID" Text="View Details" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alcohol %>" SelectCommand="SELECT [AlcoholName], [AlcoholID] FROM [Alcohol]"></asp:SqlDataSource>
    </h3>
</asp:Content>

