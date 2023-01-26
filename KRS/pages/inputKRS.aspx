<%@ Page Language="VB" AutoEventWireup="false" CodeFile="inputKRS.aspx.vb" Inherits="pages_inputKRS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%; background-color: #99FF99; font-family: Rockwell;">
            <tr>
                <td style="width: 319px; height: 26px;">KODE MATA KULIAH</td>
                <td style="width: 25px; height: 26px;">:</td>
                <td style="height: 26px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="246px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 319px; height: 28px;">NAMA MATA KULIAH</td>
                <td style="width: 25px; height: 28px;">:</td>
                <td style="height: 28px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 319px; height: 28px;">JUMLAH SKS</td>
                <td style="width: 25px; height: 28px;">:</td>
                <td style="height: 28px">
                    <asp:DropDownList ID="TextBox3" runat="server" Height="21px" Width="96px">
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
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
