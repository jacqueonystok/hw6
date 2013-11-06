
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Searchtb_TextChanged(sender As Object, e As EventArgs) Handles Searchtb.TextChanged
        Dim searchWord As String
        searchWord = "select * from Alcohol where (AlcoholName like '%" + Searchtb.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub

    Protected Sub pbsearchtb_TextChanged(sender As Object, e As EventArgs) Handles pbsearchtb.TextChanged
        Dim searchWord As String
        searchWord = "select * from Alcohol where (AlcoholName like '%" + Searchtb.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
