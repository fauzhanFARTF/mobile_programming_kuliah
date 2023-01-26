
Imports System
Imports System.Data
Imports System.Data.OleDb
Imports System.Data.OleDb.OleDbConnection
Imports System.Data.SqlClient
Partial Class pages_Default
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
    Sub Kosong()
        TextBox1.Text = ""
        TextBox2.Text = ""
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Call Koneksi()
        TextBox1.Focus()

    End Sub
    Protected Sub btnlogin_Click(sender As Object, e As EventArgs) Handles btnlogin.Click
        Call Koneksi()
        cmd = New OleDbCommand("SELECT * from tbuser WHERE usernames='" & TextBox1.Text & "' and passwords='" & TextBox2.Text & "'", conn)
        rd = cmd.ExecuteReader
        rd.Read()
        If rd.HasRows Then
            MsgBox("Login Sukses")
            Response.Redirect("http://localhost:57867/pages/pgmain.aspx")
        Else
            MsgBox("Login Salah, periksa kembali Username dan Password")
            TextBox1.Focus()
            Call Kosong()
        End If
    End Sub

    Protected Sub btnbatal_Click(sender As Object, e As EventArgs) Handles btnbatal.Click
        Call Kosong()
    End Sub
End Class