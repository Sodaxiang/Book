<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="login.css">
<title>修改书目</title>
</head>
<% String bname=request.getParameter("bname"); 
   String bid=request.getParameter("bid");
   String bnumber=request.getParameter("bnumber");
   String btype=request.getParameter("btype");
%>
<body style="background-color: #F2F2F2;">
<table width="100%" height="79" border="0" cellpadding="0" cellspacing="0" align=center>
       <tr>
         <td bgcolor="F9A859" valign="top">
        <table width="100%" height="100" border="0" align="center"  cellpadding="0" cellspacing="0" bgcolor="#466BAF">
        <tr><td align="center" style="font-size:60px;color: white;"> 简单图书管理系统</td></tr> 
        </table>
        </td>
       </tr>
      
        <tr>
         <td bgcolor="F9A859" valign="top">
         <table width="100%" height="50" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#CC865E">
         <tr><td align="center" style="font-size:20px;color: white;">欢迎访问,<%=session.getAttribute("name")%>!</td></tr>    
         </table>
         </td>
       </tr>       
       </table>
<center>
<form action="modify.jsp" method="get"> 

    <p>序号：<input type="text" name="bid" value=<%=bid%> readonly="readonly" style="background-color:#a8dbd3" ></p>
    <p>编号：<input type="text" name="bnumber" value=<%=bnumber%>></p>
    <p>类型： <select name="btype" style="width:150px;" >
           <option value="历史">历史</option>
           <option value="物理">物理</option>
           <option value="人文">人文</option>
           <option value="科技">科技</option>
      </select></p>
    <p>书名：<input type="text" name="bname" value=<%=bname%>></p>
    <p><a href="modify.jsp?bid=<%=bid%>"><input type="submit" name="sub" value="修改"></a></p>
</form>
</center>
</body>
</html>