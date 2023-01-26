Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data.OleDb.OleDbConnection
Imports System
Imports System.Data.OleDb

Partial Class pages_ListViewMK
    Inherits System.Web.UI.Page
    Dim conn As OleDbConnection
    Dim da As OleDbDataAdapter
    Dim ds As DataSet
    Dim cmd As OleDbCommand
    Dim rd As OleDbDataReader
    Dim str As String

    Sub Koneksi()
        str = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Fauzan\Documents\Visual Studio 2017\WebSites\KRS\App_Data\dbkrs.mdb"
        conn = New OleDbConnection(str)
        If conn.State = ConnectionState.Closed Then
        End If
        conn.Open()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Call Koneksi()
    End Sub
End Class
