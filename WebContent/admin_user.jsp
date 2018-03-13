<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,com.book.MongodbBean"
    pageEncoding="utf-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String[] uname=MongodbBean.getUser_uname();
String[] status=MongodbBean.getUser_status();

int n = MongodbBean.getuserlength();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="login.css">
<title>修改管理员权限</title>
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
    <center>
    <h3>管理员信息如下：</h3>
  <div class="panel1">
   <table border="1" align="center">
   <tr>
    <th width="10%" align="center">名字</th>
    <th width="10%" align="center">状态</th>
    <th width="40%" align="center">操作</th>    
  </tr>  
   <%        
        for(int i=0;i<n;i++)
        {
%> 
    <tr>

    <td height="30%" align="center"><%=uname[i]%></td>
    <td height="30%" align="center"><%=status[i]%></td>
      <td><a href="change_permission.jsp?uname=<%=uname[i]%>&status=<%=status[i]%>">修改权限</a> 
      <a href="userdelete.jsp?uname=<%=uname[i]%>">删除</a></td>
       
    </tr>
   <%} %>
    </table>
   </div>
   <div class="register"><a href="login_chosen.jsp">退出系统</a> </div>
   </center>
   </div>
   
   <div>
   <br/>
    <hr>
<p style="width:100%;text-align:center">Copyright @2017 开放源代码第XX小组</p>
   
   </div>
</body>
</html>