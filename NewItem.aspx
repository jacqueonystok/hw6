<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="NewItem.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <h3> Add A New Item!</h3>
    Warning!! When Adding in Content Of Alcohol do not include the % sign!<br />
    <br />
    <br />

    <asp:SqlDataSource
         ID="SqlDataSource1"
         runat="server" ConnectionString="<%$ ConnectionStrings:alcohol %>"
         DeleteCommand="DELETE FROM [Alcohol] WHERE [AlcoholID] = @AlcoholID" 
        InsertCommand="INSERT INTO [Alcohol] ([AlcoholName], [ContentORProof], [Color], [CocktailUse], [TypeOfDrunk], [AvgPrice]) VALUES (@AlcoholName, @ContentORProof, @Color, @CocktailUse, @TypeOfDrunk, @AvgPrice)" 
        SelectCommand="SELECT * FROM [Alcohol]" 
        UpdateCommand="UPDATE [Alcohol] SET [AlcoholName] = @AlcoholName, [ContentORProof] = @ContentORProof, [Color] = @Color, [CocktailUse] = @CocktailUse, [TypeOfDrunk] = @TypeOfDrunk, [AvgPrice] = @AvgPrice WHERE [AlcoholID] = @AlcoholID"
       
        >


        <DeleteParameters>
            <asp:Parameter Name="AlcoholID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AlcoholName" Type="String" />
            <asp:Parameter Name="ContentORProof" Type="Double" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="CocktailUse" Type="String" />
            <asp:Parameter Name="TypeOfDrunk" Type="String" />
            <asp:Parameter Name="AvgPrice" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AlcoholName" Type="String" />
            <asp:Parameter Name="ContentORProof" Type="Double" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="CocktailUse" Type="String" />
            <asp:Parameter Name="TypeOfDrunk" Type="String" />
            <asp:Parameter Name="AvgPrice" Type="Double" />
            <asp:Parameter Name="AlcoholID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <asp:DetailsView 
        ID="DetailsView1" 
        runat="server"
         AutoGenerateRows="False" 
        DataKeyNames="AlcoholID"
         DataSourceID="SqlDataSource1"
         Height="50px" 
        Width="417px" 
        DefaultMode="Insert"
         CssClass="cssgridview"
        >
        <Fields>
            <asp:BoundField DataField="AlcoholName" HeaderText="Alcohol Name" SortExpression="AlcoholName" />
            <asp:BoundField DataField="ContentORProof" HeaderText="Content of Alcohol (in %)" SortExpression="ContentORProof" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="CocktailUse" HeaderText="Cocktail Use" SortExpression="CocktailUse" />
            <asp:BoundField DataField="TypeOfDrunk" HeaderText="Type Of Drunk" SortExpression="TypeOfDrunk" />
            <asp:BoundField DataField="AvgPrice" HeaderText="Avg Price(in U.S. dollars)" SortExpression="AvgPrice" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

