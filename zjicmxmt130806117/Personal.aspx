<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Personal.aspx.cs" Inherits="Personal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Personal</title>
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 88px;
        }
    </style>
</head>
<body style="background-image:url(../images/bg_g.jpg); color:#FFF; font-family: 微软雅黑;">
    <form id="form1" runat="server">
    <div style="margin-top:10%;">
    <table border="0"   cellspacing="0" style="width: 376px;" align="center">
  <tr>
    <td height="35" colspan="2" align="center" style="color:#FFF ">个人详情</td>
  </tr>
  <tr>
    <td height="35" align="right" class="auto-style2">昵称：</td>
    <td height="35" align="center" >
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  <tr>
    <td height="35" align="right"  class="auto-style2">用户：</td>
    <td height="35" align="center" >
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  <tr>
    <td height="35" align="right"  class="auto-style2">邮箱：</td>
    <td height="35" align="center" >
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  <tr>
    <td height="35" align="right"  class="auto-style2">手机：</td>
    <td height="35" align="center" >
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>
  <tr>
    <td height="35" align="right"  class="auto-style2">性别：</td>
    <td height="35" align="center">
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
      </td>
  </tr>

    <tr>
    <td height="35" align="right"  class="auto-style2">修改密码：</td>
    <td height="35" align="center">
        <asp:TextBox ID="newpsw" runat="server" OnTextChanged="TextBox_TextChanged" TextMode="Password" Width="220px"></asp:TextBox>
      </td>
  </tr>

    <tr>
    <td height="35" align="center"  class="auto-style1" colspan="2">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="更新密码" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回主页" />
        </td>
  </tr>

  </table>
    </div>
    </form>
</body>
</html>
