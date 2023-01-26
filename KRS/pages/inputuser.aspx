<%@ Page Language="VB" AutoEventWireup="false" CodeFile="inputuser.aspx.vb" Inherits="pages_inputuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p id="btnsimpanuser">
        <br />
        <strong>INPUT DATA USER</strong></p>
        <table style="width:100%; background-color: #99FF99; font-family: Rockwell;">
            <tr>
                <td style="width: 319px; height: 26px;">USERNAME</td>
                <td style="width: 25px; height: 26px;">:</td>
                <td style="height: 26px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="246px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 319px; height: 28px;">PASSWORD</td>
                <td style="width: 25px; height: 28px;">:</td>
                <td style="height: 28px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 319px; height: 28px;">
                    <asp:Button ID="btnsimpan" runat="server" Text="Simpan" />
                </td>
                <td style="width: 25px; height: 28px;"></td>
                <td style="height: 28px"></td>
            </tr>
        </table>
    </form>
</body>
</html>
