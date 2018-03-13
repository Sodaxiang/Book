<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,com.book.MongodbBean"
    pageEncoding="utf-8"%>
 <%
String[] id=MongodbBean.getBook_bid();
String[] number=MongodbBean.getBook_bnumber();
String[] type=MongodbBean.getBook_btype();
String[] name=MongodbBean.getBook_bname();

int n = MongodbBean.getlength();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="login.css">
<title>简单图书管理系统</title>
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
        <div align="right">
         <form action="search.jsp" method="post" >
           <input type="text" name="search" placeholder="请输入书名搜索" >
           <input type="submit" name="sub" value="搜索">
         </form> 
          </div>
       <br/>
    <div class="content">
    <center>
  <div class="panel1">
   <table border="1" align="center">
   <tr>
    <th width="10%" align="center">序号</th>
    <th width="20%" align="center">书目编号</th>
     <th width="20%" align="center">书目类型</th>
    <th width="20%" align="center">书目名称</th>
    <th width="70%" align="center">操作</th>    
  </tr>   
 <%        
        for(int i=0;i<n;i++)
        {
%>
  <tr>
    <td height="30%" align="center"><%=id[i]%></td>
    <td height="30%" align="center"><%=number[i]%></td>
    <td height="30%" align="center"><%=type[i]%></td>
    <td height="30%" align="center"><%= name[i] %></td>
    <td><a href="book_look.jsp?bid=<%=id[i]%>&bnumber=<%=number[i]%>&btype=<%=type[i]%>&bname=<%=name[i]%>">修改</a>
    <a href="delete.jsp?bid=<%=id[i]%>">删除</a>
    </td>
  </tr>
<%            
       }
 %>       
    </table>
   </div> 
    <br/>
   <div class="register"><a href="add.jsp">增加书目</a> </div>
   <br/>
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