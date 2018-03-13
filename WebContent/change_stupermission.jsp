<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String sname=request.getParameter("sname"); 
   String sstatus=request.getParameter("sstatus");
   %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改权限</title>
</head>
<script  type="text/javascript">
   function pass(){
	   document.pend.action="stupass.jsp?sname=<%=sname%>";
	   document.pend.submit();
	  
   }
   
   function notpass(){
	   document.pend.action="stunotpass.jsp?sname=<%=sname%>";
	   document.pend.submit();
	  
   }
</script>
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
<form method="post" name="pend">
 <center>
   <p>名字：<input type="text" name="bid" value=<%=sname%> readonly="readonly" style="background-color:#a8dbd3" ></p>
  
     
         <p>
     <input type="submit" value="加入黑名单" onclick="pass()">&emsp;
    <input type="submit"  value="取消黑名单" onclick="notpass()">
    </p>
    </center>

</form>

</body>
</html>