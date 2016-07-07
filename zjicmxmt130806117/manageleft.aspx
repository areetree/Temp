<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manageleft.aspx.cs" Inherits="left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180% Arial, Helvetica, sans-serif, "微软雅黑";}
.demo{margin:60px auto;width:720px;}
.navbox{float:left;}
ul.nav{width:200px;padding:0px 0 60px 0;background:url() no-repeat;}
ul.nav li{margin:5px 0 0 0;}
ul.nav li a{
    background:#cbcbcb url() no-repeat;color:#174867;padding:7px 15px 7px 15px;width:152px;
    display:block;text-decoration:none;
    -webkit-transition:all 0.3s ease-out;
    -moz-transition:all 0.3s ease-out;
    -o-transition:all 0.3s ease-out;
    -webkit-box-shadow:2px 2px 4px #888;
    -moz-box-shadow:2px 2px 4px #888;
            height: 46px;
        }
ul.nav li a:hover{background:#ebebeb url() no-repeat;color:#67a5cd;padding:7px 15px 7px 30px;}
</style>
</head>
<body>
    <form id="form1" runat="server">
<div class="demo">
    <div class="navbox">
        <ul class="nav">
        <li><a href="manage2.aspx" target="right">会员管理</a></li>
            <li><a href="manage3.aspx" target="right">话题管理</a></li>
            <li><a href="manage4.aspx" target="right">评论管理</a></li>
            <li><a href="manage1.aspx" target="right">返回首页</a></li>
            <li><a href="Login.aspx" target="_top">返回登陆</a></li>
        </ul>
    </div> 
    </div>
    </form>
</body>
</html>
