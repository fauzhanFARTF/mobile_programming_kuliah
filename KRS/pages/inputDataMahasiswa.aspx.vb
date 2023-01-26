
Imports System
Imports System.Data
Imports System.Data.OleDb
Imports System.Data.OleDb.OleDbConnection
Imports System.Data.SqlClient
Partial Class pages_inputDataMahasiswa
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
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
    End Sub
    Protected Sub btnsimpan_Click(sender As Object, e As EventArgs) Handles btnsimpan.Click
        Call Koneksi()
        Dim simpan As String = "insert into tbmahasiswa(NPM, namamhs, jeniskelamin, jurusan, semester) " & " values ('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "')"
        cmd = New OleDbCommand(simpan, conn)
        cmd.ExecuteNonQuery()
        MsgBox("Data berhasil di Input", MsgBoxStyle.Information, "Information")

        Me.btnsimpan.Enabled = True
        Call Koneksi()
        Call Kosong()
        Response.Redirect("http://localhost:57867/pages/inputDataMahasiswa.aspx")

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Call Koneksi()
        Me.btnsimpan.Enabled = True
        TextBox1.Focus()
    End Sub
End Class
