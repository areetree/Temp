<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="frame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Manage</title>
</head>
    <frameset  rows="13%,80%,7%" border="2" frameborder="1" >
     <frame src="managetop.aspx" frameborder="1"  scrolling="no" name="top">
   <frameset  scrollbars="no" rows="*"  border="1"cols="15%,85%"  >
     <frame src="manageleft.aspx" scrolling="no" name="left">
   <frame src="manage1.aspx" scrolling="no" name="right">
     </frameset>
   <frame src="managebottom.aspx" scrolling="no" name="bottom">
     </frameset><noframes></noframes>
</html>
