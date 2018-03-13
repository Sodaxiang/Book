<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,com.mongodb.*"
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

<title>login_action</title>
</head>
<body>
<%
         response.setContentType("text/html;charset=utf-8");  //确保显示的汉字信息以正确编码方式显示
         request.setCharacterEncoding("utf-8");            //确保获取的汉字信息以正确编码方法获取
         String userName=(String)request.getParameter("username");  //获取登录页面用户名
         String passWord=(String)request.getParameter("password");//获取登陆页面密码
         String checkBox = request.getParameter("save_password");//获取登陆页面记住密码选择框属性值
         boolean login_test = false;               //设定登陆布尔值，若用户名和密码成功匹配，则为true
        
          try{   
             // 连接到 mongodb 服务
             MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
             //此处采用无用户名和密码验证方式登陆
             @SuppressWarnings("deprecation")
            DB db = mongoClient.getDB("library" );  //连接到数据库library
            DBCollection coll = db.getCollection("userInfo");  //获取library数据库中集合userInfo
            System.out.println("Collection userInfo selected successfully");
            DBCursor cursor = coll.find();  //查询集合userInfo中文档信息
            
            int i=1; 
            while (cursor.hasNext()) {     //检索集合userInfo中所有文档信息
                System.out.println("userInfo Document: "+i); 
                DBObject show = cursor.next();              
                System.out.println(show); 
                @SuppressWarnings("rawtypes")
                Map show1 = show.toMap();  //将检索结果show(Bson类型)转换为Map类型
                String toname = (String)show1.get("username");  //提取Map中字段名为username的属性值
                String topassword = (String)show1.get("password"); //提取Map中字段名为password的属性值
                String tostatus=(String)show1.get("status");
                if(toname.equals(userName) && topassword.equals(passWord)){  
                //将从数据库中获取的用户名和密码与表单中获取的数据进行验证，匹配成功则使login_test值为true
                    System.out.println("登陆成功！！！！！"+"username:"+toname+"  password:"+topassword);
                  if (tostatus.equalsIgnoreCase("已通过")){
                	  response.sendRedirect("welcome.jsp"); 
                  }
                  else if(tostatus.equalsIgnoreCase("未通过")){
                	  response.sendRedirect("notpassed.jsp"); 
                  }
                  else{
                  response.sendRedirect("pending.jsp");
                  }
                    session.setAttribute("name",toname);  
                    login_test = true;
                }
                  System.out.println(show1.get("username"));
                i++;
            }
            
          }catch(Exception e){
             System.err.println( e.getClass().getName() + ": " + e.getMessage() );
         }
    
        if(!login_test) {   
             response.sendRedirect("login_Fail.jsp");               
        }
     %>
     
  </body>
</body>
</html>