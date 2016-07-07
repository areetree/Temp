<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Register</title>
    <style type="text/css">
        .auto-style1 {
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">

    <div style="background-image:url(../images/bg_m.jpg); color:#FFF">
         <div align="center" style="font-size: 44px; font-family: 方正兰亭超细黑简体;">
             <br />
             <br />
             书&nbsp; 虫&nbsp; 俱&nbsp; 乐&nbsp; 部&nbsp; 注&nbsp; 册<br />
             <br />
         </div><br />
        </div>

    <div style="margin-top:3%;font-family: 方正兰亭超细黑简体;">
    <table   align="center" border="0" cellspacing="0" cellpadding="0" style="height: 242px; width: 358px">

  <tr>
    <td align="right">昵 称：</td>
    <td height="30" class="auto-style1">
        <asp:TextBox ID="UserG" runat="server" Width="200px" OnTextChanged="UserG_TextChanged"></asp:TextBox>
      </td>
  </tr>

  <tr>
    <td width="120" align="right">用户名：</td>
    <td height="30" class="auto-style1">
        <asp:TextBox ID="UserName" runat="server" Width="200px" OnTextChanged="UserName_TextChanged"></asp:TextBox>
      </td>
  </tr>
  
  <tr>
    <td align="right">密 码：</td>
    <td height="30" class="auto-style1">
        <asp:TextBox ID="UserPsw" runat="server" TextMode="Password" Width="200px" OnTextChanged="UserPsw_TextChanged"></asp:TextBox>
      </td>
  </tr>

  <tr>
    <td align="right">确认密码：</td>
    <td height="30" class="auto-style1">
        <asp:TextBox ID="ReUserPsw" runat="server" TextMode="Password" Width="200px" OnTextChanged="ReUserPsw_TextChanged"></asp:TextBox>
      </td>
  </tr>

        <tr>
    <td align="right">邮 箱：</td>
    <td height="30" class="auto-style1">
        <asp:TextBox ID="UserMail" runat="server" Width="200px" OnTextChanged="UserMail_TextChanged"></asp:TextBox>
      </td>
        </tr>

  <tr>
    <td align="right">手 机：</td>
    <td height="30" class="auto-style1">
        <asp:TextBox ID="UserPhone" runat="server" Width="200px" OnTextChanged="UserPhone_TextChanged"></asp:TextBox>
      </td>
  </tr>

  <tr>
    <td align="right">性 别：</td>
    <td class="auto-style1"><div align="left">
        <asp:RadioButton ID="boy" runat="server" Text="男" GroupName="1" OnCheckedChanged="boy_CheckedChanged" />
        &nbsp;&nbsp; <asp:RadioButton ID="gril" runat="server" Text="女" GroupName="1" OnCheckedChanged="gril_CheckedChanged"/>
      </div></td>
  </tr>

  <tr>
    <td height="30" colspan="2" align="center">
        <br />
      </td>
  </tr>

  <tr>
    <td height="30" colspan="2" align="center">
      &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button_submit" Text="提  交" BackColor="Black" ForeColor="White" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button_reset" Text="重  置" BackColor="Black" ForeColor="White" />
    </td>
  </tr>

</table>
    </div>
    </form>
        <div>
        <br />
        <br />
        <br />
        <br />
        <hr/>
        </div>
</body>
</html>
