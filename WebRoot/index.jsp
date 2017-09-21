<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    This is my index page. <br>
    please add URL with four options below:<br>
    1.hello&nbsp;(print welcome page)<br>
    2.action2    (print plain text of ok.jsp)<br>
    3.action3    (come to baidu page)<br>
    4.action4    (redirect to hello)<br>
    <a href="<%=request.getContextPath()%>/hello.action">Hello World Action调用</a><br>
    <a href="<%=request.getContextPath()%>/action2.action">Action2调用</a><br>
    <a href="<%=request.getContextPath()%>/action3.action">Action3调用</a><br>
    <a href="<%=request.getContextPath()%>/action4.action">Action4调用</a><br>
    <a href="<%=request.getContextPath()%>/login.action">登陆界面</a><br>
    <form action="upload" enctype="multipart/form-data" method="post" >
   			用户名：<input type="text" name="username"> <br/>
			上传文件1：<input type="file" name="file1"> <br/>  	
			<input type="submit" name="submit_name" value="提交"/>       
     	</form>  
  </body>
</html>
