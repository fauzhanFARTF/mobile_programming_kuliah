<%@ Page Language="VB" AutoEventWireup="false" CodeFile="inputDataMahasiswa.aspx.vb" Inherits="pages_inputDataMahasiswa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 319px;
            height: 26px;
        }
        .auto-style2 {
            width: 25px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Input Data Mahasiswa</h1>
        <table style="width:100%; background-color: #99FF99; font-family: Rockwell;">
            <tr>
                <td class="auto-style1">NPM</td>
                <td class="auto-style2">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="246px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 319px; height: 28px;">Nama Mahasiswa</td>
                <td style="width: 25px; height: 28px;">:</td>
                <td style="height: 28px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 319px; height: 28px;">Jenis Kelamin</td>
                <td style="width: 25px; height: 28px;">:</td>
                <td style="height: 28px">
                    <asp:DropDownList ID="TextBox3" runat="server" Height="21px" Width="96px">
                        <asp:ListItem Value="Laki-Laki">Laki-Laki</asp:ListItem>
                        <asp:ListItem>Perempuan</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 319px; height: 28px;">Jurusan</td>
                <td style="width: 25px; height: 28px;">:</td>
                <td style="height: 28px">
                    <asp:DropDownList ID="TextBox4" runat="server" Height="29px" Width="192px">
                        <asp:ListItem Value="Sistem Informasi">Sistem Informasi</asp:ListItem>
                        <asp:ListItem>Teknik Informatika</asp:ListItem>
                        <asp:ListItem>Manajemen Informatika</asp:ListItem>
                        <asp:ListItem>Ilmu Komputer</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 319px; height: 28px;">Semester</td>
                <td style="width: 25px; height: 28px;">:</td>
                <td style="height: 28px">
                    <asp:DropDownList ID="TextBox5" runat="server" Height="21px" Width="96px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                        <asp:ListItem Value="10"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 319px; height: 28px;">
                    <asp:Button ID="btnsimpan" runat="server" Text="Simpan" />
                    <asp:Button ID="btnedit" runat="server" Text="Edit" />
                </td>
                <td style="width: 25px; height: 28px;"></td>
                <td style="height: 28px"></td>
            </tr>
        </table>
    </form>
</body>
</html>
