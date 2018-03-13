<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加书目</title>
</head>
<script language="javascript">
            function check()
            {
                var id,number,name;              
                id=document.addform.bid.value;
                number=document.addform.bnumber.value;
                name=document.addform.bname.value;
                if(id==""||number==""||name=="")
                    alert("信息输入不完整，请重新输入！！！");
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
       <center>
    <form name="addform" action="add_action.jsp" method="get">
     <p>书目序号：<input type="text" name="bid"  placeholder="输入序号"></p>
     <p>书目编号：<input type="text" name="bnumber"  placeholder="输入图书编号"></p>
     <p>类&emsp;&emsp;型： <select name="btype" style="width:150px;" >
           <option value="历史">历史</option>
           <option value="物理">物理</option>
           <option value="人文">人文</option>
           <option value="科技">科技</option>
      </select></p>
    <p>图书名称：<input type="text" name="bname" placeholder="输入图书名"></p>
    <p style="position:relative;top:-10px;left:-70px;">简&emsp;&emsp;介：</p>
    <p><textarea rows="10" cols="35" name="bplot"></textarea></p>
    <p><input type="submit" name="sub" onclick="check()" value="提交"></p>
</center>
</form>
</body>
</html>