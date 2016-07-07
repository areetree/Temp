<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage2.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <style type="text/css">
        .auto-style1 {
            width: 358px;
            font-family:font-family: 方正兰亭超细黑简体
        }
        .auto-style2 {
            width: 180px;
            font-family:font-family: 方正兰亭超细黑简体
        }
    </style>
</head>
<body style="background-image:url(../images/bg_q.jpg)">
    <form id="form1" runat="server">
    <div id="container" align="center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=PC731\SQLEXPRESS;Initial Catalog=Date;Persist Security Info=True;User ID=sa;Password=good6565" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [user_id], [user_name], [user_psw], [user_nch], [user_mail], [user_phone], [user_sex] FROM [Table_user]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Table_user] WHERE [user_id] = @original_user_id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([user_psw] = @original_user_psw) OR ([user_psw] IS NULL AND @original_user_psw IS NULL)) AND (([user_nch] = @original_user_nch) OR ([user_nch] IS NULL AND @original_user_nch IS NULL)) AND (([user_mail] = @original_user_mail) OR ([user_mail] IS NULL AND @original_user_mail IS NULL)) AND (([user_phone] = @original_user_phone) OR ([user_phone] IS NULL AND @original_user_phone IS NULL)) AND (([user_sex] = @original_user_sex) OR ([user_sex] IS NULL AND @original_user_sex IS NULL))" InsertCommand="INSERT INTO [Table_user] ([user_name], [user_psw], [user_nch], [user_mail], [user_phone], [user_sex]) VALUES (@user_name, @user_psw, @user_nch, @user_mail, @user_phone, @user_sex)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Table_user] SET [user_name] = @user_name, [user_psw] = @user_psw, [user_nch] = @user_nch, [user_mail] = @user_mail, [user_phone] = @user_phone, [user_sex] = @user_sex WHERE [user_id] = @original_user_id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([user_psw] = @original_user_psw) OR ([user_psw] IS NULL AND @original_user_psw IS NULL)) AND (([user_nch] = @original_user_nch) OR ([user_nch] IS NULL AND @original_user_nch IS NULL)) AND (([user_mail] = @original_user_mail) OR ([user_mail] IS NULL AND @original_user_mail IS NULL)) AND (([user_phone] = @original_user_phone) OR ([user_phone] IS NULL AND @original_user_phone IS NULL)) AND (([user_sex] = @original_user_sex) OR ([user_sex] IS NULL AND @original_user_sex IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_user_name" Type="String" />
                <asp:Parameter Name="original_user_psw" Type="String" />
                <asp:Parameter Name="original_user_nch" Type="String" />
                <asp:Parameter Name="original_user_mail" Type="String" />
                <asp:Parameter Name="original_user_phone" Type="String" />
                <asp:Parameter Name="original_user_sex" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="user_psw" Type="String" />
                <asp:Parameter Name="user_nch" Type="String" />
                <asp:Parameter Name="user_mail" Type="String" />
                <asp:Parameter Name="user_phone" Type="String" />
                <asp:Parameter Name="user_sex" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="user_psw" Type="String" />
                <asp:Parameter Name="user_nch" Type="String" />
                <asp:Parameter Name="user_mail" Type="String" />
                <asp:Parameter Name="user_phone" Type="String" />
                <asp:Parameter Name="user_sex" Type="String" />
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_user_name" Type="String" />
                <asp:Parameter Name="original_user_psw" Type="String" />
                <asp:Parameter Name="original_user_nch" Type="String" />
                <asp:Parameter Name="original_user_mail" Type="String" />
                <asp:Parameter Name="original_user_phone" Type="String" />
                <asp:Parameter Name="original_user_sex" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5" AllowSorting="True" DataKeyNames="user_id" Width="700px" Height="100px">
            <Columns>
                <asp:BoundField DataField="user_name" HeaderText="用户" SortExpression="user_name" />
                <asp:BoundField DataField="user_psw" HeaderText="密码" SortExpression="user_psw" />
                <asp:BoundField DataField="user_nch" HeaderText="昵称" SortExpression="user_nch" />
                <asp:BoundField DataField="user_mail" HeaderText="邮箱" SortExpression="user_mail" />
                <asp:BoundField DataField="user_phone" HeaderText="手机" SortExpression="user_phone" />
                <asp:BoundField DataField="user_sex" HeaderText="性别" SortExpression="user_sex" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
            <HeaderStyle BackColor="Silver" />
            <SelectedRowStyle BackColor="#6600FF" ForeColor="#000066" />
        </asp:GridView>
        <br />
        当前页：<%=GridView1.PageIndex+1 %>
        共计：<%=GridView1.PageCount %>页<br />
        <br />
        <br />
        <br />
        <br />
        </div>
        <div><hr/></div>
        <div align="center">
        
            <table border="0"  style="width:40%;margin-top:3%;">
                <tr>
                    <td class="auto-style2">昵称：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>           
                </tr>
                <tr>
                    <td class="auto-style2">用户：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">密码：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>           
                </tr>
                <tr>
                    <td class="auto-style2">邮箱：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>           
                </tr>
                <tr>
                    <td class="auto-style2">手机：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>           
                </tr>
                <tr>
                    <td class="auto-style2">性别：</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>男</asp:ListItem>
                            <asp:ListItem>女</asp:ListItem>
                        </asp:DropDownList>
                    </td>           
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="添加新会员" OnClick="Button1_Click" BackColor="Black" ForeColor="White" Height="32px" />
                    </td>
                </tr>
            </table>
        
        </div>
    </form>
</body>
</html>
