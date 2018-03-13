<%@ page language="java" contentType="text/html; charset=utf-8"  import="java.util.*,com.book.MongodbBean"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

</head>
<% 
    response.setContentType("text/html;charset=utf-8");  //确保显示的汉字信息以正确编码方式显示
    request.setCharacterEncoding("utf-8");            //确保获取的汉字信息以正确编码方法获取
    String bname=(String)request.getParameter("bname");
    String bid=(String)request.getParameter("bid");
    String bnumber=(String)request.getParameter("bnumber");
    String btype=(String)request.getParameter("btype");
    String bplot=(String)request.getParameter("bplot");
    if(bid.length()==0||bname.length()==0){
    	response.sendRedirect("add.jsp");
    }  
     else{
    int a=MongodbBean.add(bid, bnumber, btype, bname, bplot);
    response.sendRedirect("add_success.jsp");
   }  
%>
<body>
<p><%=bnumber %></p>
<p> <%=bname %></p>
<p> <%=bid %></p>
<p> <%=bplot %></p>
</body>
</html>