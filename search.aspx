<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alcohol %>" SelectCommand="SELECT * FROM [Alcohol]"></asp:SqlDataSource>
    
   

    <% If Not IsPostBack Then%>
    
    <asp:Label ID="Label1" runat="server" Text="Search for alcohol by name then push enter: "></asp:Label>
    <br />


    <asp:TextBox ID="Searchtb" runat="server" AutoPostBack="false"></asp:TextBox>

    <br />
    <%Else%>
     
    
    Search for another alcohol name: <br />
    <asp:TextBox ID="pbsearchtb" runat="server" AutoPostBack="true"></asp:TextBox>
    <br/>
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AlcoholID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="AlcoholID" HeaderText="AlcoholID" InsertVisible="False" ReadOnly="True" SortExpression="AlcoholID" />
            <asp:BoundField DataField="AlcoholName" HeaderText="AlcoholName" SortExpression="AlcoholName" />
            <asp:BoundField DataField="ContentORProof" HeaderText="ContentORProof" SortExpression="ContentORProof" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="CocktailUse" HeaderText="CocktailUse" SortExpression="CocktailUse" />
            <asp:BoundField DataField="TypeOfDrunk" HeaderText="TypeOfDrunk" SortExpression="TypeOfDrunk" />
            <asp:BoundField DataField="AvgPrice" HeaderText="AvgPrice" SortExpression="AvgPrice" />
        </Columns>
    </asp:GridView>
    <%End If%>
</asp:Content>

