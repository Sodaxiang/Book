<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
    pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">  
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
  
<link rel="stylesheet" type="text/css" href="login.css">

<title>登录失败</title>

</head>
<body>
 <div class="content">
  <div class="panel1">
  <h1>输入用户名和密码不正确，请重新登陆！！！</h1>
  
  </div>
   <div class="register">
      <button onclick="window.location.href='login_chosen.jsp'">返回</button> 
      </div>
  </div>

</body>
</html>