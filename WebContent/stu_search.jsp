<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,com.book.MongodbBean"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="login.css">
<title>搜索结果</title>
</head>
<% 
    response.setContentType("text/html;charset=utf-8");  //确保显示的汉字信息以正确编码方式显示
    request.setCharacterEncoding("utf-8");            //确保获取的汉字信息以正确编码方法获取
    String search=(String)request.getParameter("search");
    String[] bookinfo=MongodbBean.search(search);
    int i=0;
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
         <tr><td align="center" style="font-size:20px;color: white;">欢迎访问,<%=session.getAttribute("name")%>!   
          </td>  
         </tr>    
         </table>
         </td>
       </tr>      
       </table>
       
        <div class="content">
       
    <center>
     <h3>搜索结果如下</h3>
  <div class="panel1">
   <table border="1" align="center">
   <tr>
    <th width="20%" align="center">书目名称</th>
    <th width="70%" align="center">操作</th>    
  </tr>   

  <tr>
    <td height="30%" align="center"><%= bookinfo[3] %></td>
    <td><a href="stu_look.jsp?bid=<%=bookinfo[0]%>&bnumber=<%=bookinfo[1]%>&btype=<%=bookinfo[2]%>&bname=<%=bookinfo[3]%>&bplot=<%=bookinfo[4]%>">查看</a>
   
    </td>
  </tr>
  </table>
 </div>
 
 <div class="register"><a href="book_index.jsp">返回</a> </div>

</center>
</body>
</html>