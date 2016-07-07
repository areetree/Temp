<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style3 {
            width: 33%;
            height: 21px;
        }
        .auto-style4 {
            width: 9%;
            height: 21px;
        }
        .auto-style6 {
            width: 50%;
            height: 21px;
        }
        .auto-style8 {
            width: 21%;
        }
        .auto-style9 {
            width: 21%;
            height: 21px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div style="background-image:url(../images/bg_m.jpg); color:#FFF">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div align="center" style="font-size: 44px; font-family: 方正兰亭超细黑简体;">书&nbsp;&nbsp;&nbsp; 虫&nbsp;&nbsp; 俱&nbsp;&nbsp;&nbsp; 乐&nbsp;&nbsp; 部</div><br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </div>
    <div align="center" style="font-family: 方正兰亭超细黑简体;font-weight: bold;">
    
         <table border="0" cellpadding="0" cellspacing="0" bgcolor="" style="width: 761px; height: 23px;">

          <tr>
              <td>
                  <br />
                  <br />
               </td>
          </tr>

          <tr>
            <td class="auto-style4"><div align="center">  
            <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label></div></td>     
            <td class="auto-style3"><div align="center">
            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox></div></td>

            <td class="auto-style9"><div align="center">
            <asp:Label ID="Label2" runat="server" Text="密  码："></asp:Label></div></td>           
            <td class="auto-style6"><div align="center">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px"></asp:TextBox></div></td>             
          </tr>

          <tr>
              <td>
                  <br />
               </td>
          </tr>

         <tr>
            <td colspan="2"><div align="center">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Admin" />
            </div></td>     

            <td class="auto-style8"><div align="center">
            <asp:Button ID="Button1" runat="server" Text="注  册" OnClick="Button_register" Width="100px" BackColor="Black" Font-Bold="False" ForeColor="White"/>          </div></td>
            <td class="auto-style1"><div align="center">
            <asp:Button ID="Button2" runat="server" OnClick="Button_login" Text="登  陆" Width="100px" BackColor="Black" ForeColor="White"/>             </div></td>
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
