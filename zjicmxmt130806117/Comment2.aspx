<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Comment2.aspx.cs" Inherits="Comment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image:url(../images/bg_m.jpg)">

        <br />
        <div align="center" style="font-size: 44px; font-family: 方正兰亭超细黑简体; color: #FFFFFF;">&nbsp; &nbsp; 用 户 留 言 版</div><br />
        </div>
    <div align="center">
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=PC731\SQLEXPRESS;Initial Catalog=Date;Persist Security Info=True;User ID=sa;Password=good6565" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [topic_name], [user_name], [comment], [comment_id] FROM [Table_comment] WHERE ([topic_name] = @topic_name)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Table_comment] WHERE [comment_id] = @original_comment_id AND (([topic_name] = @original_topic_name) OR ([topic_name] IS NULL AND @original_topic_name IS NULL)) AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([comment] = @original_comment) OR ([comment] IS NULL AND @original_comment IS NULL))" InsertCommand="INSERT INTO [Table_comment] ([topic_name], [user_name], [comment]) VALUES (@topic_name, @user_name, @comment)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Table_comment] SET [topic_name] = @topic_name, [user_name] = @user_name, [comment] = @comment WHERE [comment_id] = @original_comment_id AND (([topic_name] = @original_topic_name) OR ([topic_name] IS NULL AND @original_topic_name IS NULL)) AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([comment] = @original_comment) OR ([comment] IS NULL AND @original_comment IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_comment_id" Type="Int32" />
                <asp:Parameter Name="original_topic_name" Type="String" />
                <asp:Parameter Name="original_user_name" Type="String" />
                <asp:Parameter Name="original_comment" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="topic_name" Type="String" />
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="comment" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="平凡的世界" Name="topic_name" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="topic_name" Type="String" />
                <asp:Parameter Name="user_name" Type="String" />
                <asp:Parameter Name="comment" Type="String" />
                <asp:Parameter Name="original_comment_id" Type="Int32" />
                <asp:Parameter Name="original_topic_name" Type="String" />
                <asp:Parameter Name="original_user_name" Type="String" />
                <asp:Parameter Name="original_comment" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="49px" Width="734px" DataKeyNames="comment_id">
            <Columns>
                <asp:BoundField DataField="comment_id" HeaderText="评论编号" SortExpression="comment_id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="topic_name" HeaderText="话题" SortExpression="topic_name" />
                <asp:BoundField DataField="user_name" HeaderText="用户" SortExpression="user_name" />
                <asp:BoundField DataField="comment" HeaderText="评论" SortExpression="comment" />
            </Columns>
        </asp:GridView>
        <br />
    
    </div>

        <div align="center">
            <table border="0"  style="width:35%; margin-top:5%; height: 139px;">
                <tr>
                    <td class="auto-style2">话题：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server" Height="15px" Width="180px"></asp:TextBox>
                    </td>           
                </tr>
                <tr>
                    <td class="auto-style2">评论：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server" Height="15px" Width="180px"></asp:TextBox>
                    </td>           
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="添加新评论" OnClick="Button1_Click" BackColor="Black" ForeColor="White" Height="32px" />
                    </td>
                </tr>
            </table>
    </div>
   </form>
</body>
</html>
