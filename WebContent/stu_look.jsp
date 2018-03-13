<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,com.book.MongodbBean"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String bname=request.getParameter("bname"); 
   String bid=request.getParameter("bid");
   String bnumber=request.getParameter("bnumber");
   String btype=request.getParameter("btype");
   String bplot=request.getParameter("bplot");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="login.css">
<title>书目详细信息</title>
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
         <tr><td align="center" style="font-size:20px;color: white;">欢迎访问,<%=session.getAttribute("name")%>!</td></tr>    
         </table>
         </td>
       </tr>       
       </table>
       
       <center>
    <p>书名：<input type="text" name="bname" value=<%=bname%> readonly="readonly" style="background-color:#a8dbd3"></p>
    <p>编号：<input type="text" name="bnumber" value=<%=bnumber%> readonly="readonly" style="background-color:#a8dbd3"></p>
    <p>类型： <input type="text" name="btype" value=<%=btype%> readonly="readonly" style="background-color:#a8dbd3"></p>
    <p style="position:relative;top:0px;left:-75px;">简介：</p>
    <div><textarea rows="10" cols="35" name="bplot" readonly="readonly" style="background-color:#a8dbd3"><%=bplot%></textarea></div>
     <br>
     </center>
     <div class="content">
  
      <div class="register">
      <button onclick="window.location.href='book_index.jsp'">返回</button> 

   </div>
   </div> 


</body>
</html>