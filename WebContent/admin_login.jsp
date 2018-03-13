<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%


String username = "";
String password = "";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="login.css">
<title>超级管理员登录</title>
</head>
<body>
<div class="content">
        <div class="head">
            <h1>超级管理员登录</h1>
        </div>

        <!--  登录面板    -->
        <div class="panel">
          <form action="adminlogin_action.jsp" method="post">  
            
            <!--  账号和密码组    -->
            <div class="group">
                <label>账号</label>
                <input  type="text" placeholder="请输入账号" name="username" value="<%=username%>">
            </div>
            <div class="group">
                <label>密码</label>
                <input type="password" placeholder="请输入密码" name="password" value="<%=password%>">
            </div>
            <div>
             <input type="checkbox" value="save" name="save_password"> 
             <label>记住密码</label> 
            </div>
            <div class="group">
            <label></label>
            </div>
            <!--  登录按钮    -->
            <div class="login">
                <button type="submit" name="login">登录</button>
               <button type="reset" name="reset">重置</button>
            </div>
           </form>
        </div>
        </div>
  
</body>
</html>