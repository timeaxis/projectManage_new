<%@ page contentType="text/html" language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>项目审批</title>   
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
  	<form>
     <table>
    	<tr>
    		<th>项目名称</th>
    		<th>申请人</th>
    		<th>指导教师</th>
    		<th>审批结果</th>
    	</tr>
    	<tr> <%--应该是由数据库中获取而来--%>
		    <td><input type = "text" name = "mingcheng" value = ""></td>
    		<td><input type = "text" name = "xingming1" value = ""></td>
    		<td><input type = "text" name = "xingming2" value = ""></td>
    		<td><input type = "text" name = "shenpijieguo" value = ""></td>
    	</tr>
   	 </table>
    </form>
  </body>
</html>
