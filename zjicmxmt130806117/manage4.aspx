<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage4.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body style="background-image:url(../images/bg_q.jpg)">
    <form id="form1" runat="server">
    <div align="center">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=PC731\SQLEXPRESS;Initial Catalog=Date;Persist Security Info=True;User ID=sa;Password=good6565" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [topic_name], [user_name], [comment], [comment_id] FROM [Table_comment]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Table_comment] WHERE [comment_id] = @original_comment_id AND (([topic_name] = @original_topic_name) OR ([topic_name] IS NULL AND @original_topic_name IS NULL)) AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([comment] = @original_comment) OR ([comment] IS NULL AND @original_comment IS NULL))" InsertCommand="INSERT INTO [Table_comment] ([topic_name], [user_name], [comment]) VALUES (@topic_name, @user_name, @comment)" UpdateCommand="UPDATE [Table_comment] SET [topic_name] = @topic_name, [user_name] = @user_name, [comment] = @comment WHERE [comment_id] = @original_comment_id AND (([topic_name] = @original_topic_name) OR ([topic_name] IS NULL AND @original_topic_name IS NULL)) AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([comment] = @original_comment) OR ([comment] IS NULL AND @original_comment IS NULL))">
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
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="comment_id" DataSourceID="SqlDataSource1" Width="600px" AllowPaging="True" Height="100px">
            <Columns>
                <asp:BoundField DataField="comment_id" HeaderText="评论编号" InsertVisible="False" ReadOnly="True" SortExpression="comment_id" />
                <asp:BoundField DataField="topic_name" HeaderText="话题题目" SortExpression="topic_name" />
                <asp:BoundField DataField="user_name" HeaderText="用户名" SortExpression="user_name" />
                <asp:BoundField DataField="comment" HeaderText="评论内容" SortExpression="comment" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
            <HeaderStyle BackColor="Silver" />
        </asp:GridView>

    </div>
    </form>
</body>
</html>
