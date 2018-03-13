<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,com.book.MongodbBean"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="login.css">
<title>Insert title here</title>
</head>
<body>
<%

response.setContentType("text/html;charset=utf-8");  //确保显示的汉字信息以正确编码方式显示
request.setCharacterEncoding("utf-8");            //确保获取的汉字信息以正确编码方法获取
String uname=request.getParameter("uname");
int u=MongodbBean.notpass(uname);
%>
<div class="content">
  <div class="panel1">
    <h1>您因**被移入黑名单</h1>
     </div>
     <div class="register">
      <button onclick="window.location.href='login_chosen.jsp'">返回</button> 
      </div>
    </div>
</body>
</html>