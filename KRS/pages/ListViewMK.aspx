<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ListViewMK.aspx.vb" Inherits="pages_ListViewMK" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        DAFTAR MATAKULIAH<br />
        <br />
        <asp:TextBox ID="txtnama" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Cari" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="kdmk" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="kdmk" HeaderText="kdmk" ReadOnly="True" SortExpression="kdmk" />
                <asp:BoundField DataField="nmmk" HeaderText="nmmk" SortExpression="nmmk" />
                <asp:BoundField DataField="sks" HeaderText="sks" SortExpression="sks" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [tbmk] WHERE (([kdmk] = @kdmk))"
            InsertCommand="INSERT INTO[tbmk] ([kdmk],[nmmk],[sks])"
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [tbmk]"
            Filterexpression="nmmk like '{0}%'"
            UpdateCommand = "UPDATE [tbmk] SET [nmmk]=@nmmk, [sks]=@sks WHERE (([kdmk]=@kdmk))"
            >
            <FilterParameters>
                <asp:ControlParameter Name="nmmk"
                    ControlId="txtnama" />
            </FilterParameters>
            <DeleteParameters>
                <asp:Parameter Name="kdmk" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="nmmk" Type="String" />
                <asp:Parameter Name="sks" Type="Int32" />
                <asp:Parameter Name="kdmk" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="nmmk" Type="String" />
                <asp:Parameter Name="kdmk" Type="String" />
                <asp:Parameter Name="sks" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
