
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim delAlcohol As String = e.Values("AlcoholName").ToString()
        Response.Write("The record ")
        Response.Write("<span class=deletedAlcoholhighlight> ")
        Response.Write(delAlcohol)
        Response.Write("</span> has been deleted from the database. ")


        Response.AddHeader("Refresh", "5;URL=./default.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./default.aspx")
    End Sub
End Class
