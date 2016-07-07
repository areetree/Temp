<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage3.aspx.cs" Inherits="main" %>

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


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=PC731\SQLEXPRESS;Initial Catalog=Date;Persist Security Info=True;User ID=sa;Password=good6565" DeleteCommand="DELETE FROM [Table_topic] WHERE [topic_id] = @original_topic_id AND (([topic_name] = @original_topic_name) OR ([topic_name] IS NULL AND @original_topic_name IS NULL))" InsertCommand="INSERT INTO [Table_topic] ([topic_id], [topic_name]) VALUES (@topic_id, @topic_name)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [topic_id], [topic_name] FROM [Table_topic]" UpdateCommand="UPDATE [Table_topic] SET [topic_name] = @topic_name WHERE [topic_id] = @original_topic_id AND (([topic_name] = @original_topic_name) OR ([topic_name] IS NULL AND @original_topic_name IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_topic_id" Type="Int32" />
                <asp:Parameter Name="original_topic_name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="topic_id" Type="Int32" />
                <asp:Parameter Name="topic_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="topic_name" Type="String" />
                <asp:Parameter Name="original_topic_id" Type="Int32" />
                <asp:Parameter Name="original_topic_name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="topic_id" DataSourceID="SqlDataSource1" Width="512px" Height="100px" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="topic_id" HeaderText="话题编号" ReadOnly="True" SortExpression="topic_id" />
                <asp:BoundField DataField="topic_name" HeaderText="话题题目" SortExpression="topic_name" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
            <HeaderStyle BackColor="Silver" />
        </asp:GridView>


        <br />
        <br />


    </div>

    <div><hr/></div>

    <div align="center">
            <table border="0"  style="width:35%; margin-top:3%; height: 139px;">
                <tr>
                    <td class="auto-style2">话题编号：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server" Height="15px" Width="180px"></asp:TextBox>
                    </td>           
                </tr>
                <tr>
                    <td class="auto-style2">话题主题：</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server" Height="15px" Width="180px"></asp:TextBox>
                    </td>           
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="添加新话题" OnClick="Button1_Click" BackColor="Black" ForeColor="White" Height="32px" />
                    </td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
