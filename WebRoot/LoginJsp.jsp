<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'LoginJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <form action="login_judge" method="post">
    <table align="center">
    	<tr>
    		<td>用户名</td>
    		<td>
    			<input type="text" name="login_name">
    		</td>
    	</tr>
    	<tr>
    		<td>密码</td>
    		<td>
    			<input type="password" name="login_password">
    		</td>
    	</tr>
    	<tr>
    		<td>
    			<input type="submit" value="登陆">
    		</td>
    		<td>
    			<input type="reset" value="取消">
    		</td>
    	</tr>
    </table>
   </form>
  </body>
</html>
