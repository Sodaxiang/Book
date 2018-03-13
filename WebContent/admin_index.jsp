<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="login.css">
<title>超级管理员主页</title>
</head>
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
         <tr><td align="center" style="font-size:20px;color: white;">欢迎访问,<%=session.getAttribute("name")%>!   
          </td>  
         </tr>    
         </table>
         </td>
       </tr>      
       </table>
     <div class="content">
     <div class="register">
      <button onclick="window.location.href='admin_user.jsp'">查看管理员</button> 
      </div>
      <div class="register">
      <button onclick="window.location.href='admin_stu.jsp'">查看用户</button> 
      </div>
     </div>
     
    <br>
    <center>
     <div class="register"><a href="login_chosen.jsp">退出系统</a> </div>
     </center>
</body>
</html>