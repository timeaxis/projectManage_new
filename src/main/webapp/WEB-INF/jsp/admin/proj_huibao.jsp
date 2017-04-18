<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>阶段汇报</title>   
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
    <form name = "huibao" action = "" method = "post">
    	<table>
    		<tr>
    			<th>第一阶段</th>
    			<td><input type = "text" name = "diyijieduan" value = ""></td>  			
    		</tr>	
    		<tr>
    			<th>主要工作</th>
    			<td><textarea name = "zygz" rows = "6" cols = "15"></textarea></td>
    		</tr>
    		<tr>
    			<th>取得成果</th>
    			<td><textarea name = "qdcg" rows = "6" cols = "15"></textarea></td>
    		</tr>
    		<tr>
    			<td colspan = "2" align = "center"><input type = "submit" value = "提交"></td>
    		</tr>
    	</table>
    	<div>
    		<h3>指导教师点评</h3>
    		<textarea name = "zdjsdp" rows = "6" cols = "15"></textarea>
    	</div>
    	<table>
    		<tr>
    			<td>第二阶段</td>
    			<td><input type = "text" name = "dierjieduan" value = ""></td>  <%-- 填写汇报时间段 --%>		
    		</tr>	
    		<tr>
    			<td>主要工作</td>
    			<td><textarea name = "zygz" rows = "6" cols = "15"></textarea></td>
    		</tr>
    		<tr>
    			<td>取得成果</td>
    			<td><textarea name = "qdcg" rows = "6" cols = "15"></textarea></td>
    		</tr>
    		<tr>
    			<td colspan = "2" align = "center"><input type = "submit" value = "提交"></td>
    		</tr>
    	</table>
    	<div>
    		<h3>指导教师点评</h3>
    		<textarea name = "zdjsdp" rows = "6" cols = "15"></textarea>
    	</div>
    	<table>
    		<tr>
    			<td>第三阶段</td>
    			<td><input type = "text" name = "disanjieduan" value = ""></td>  			
    		</tr>	
    		<tr>
    			<td>主要工作</td>
    			<td><textarea name = "zygz" rows = "6" cols = "15"></textarea></td>
    		</tr>
    		<tr>
    			<td>取得成果</td>
    			<td><textarea name = "qdcg" rows = "6" cols = "15"></textarea></td>
    		</tr>
    		<tr>
    			<td colspan = "2" align = "center"><input type = "submit" value = "提交"></td>
    		</tr>
    	</table>
    	<div>
    		<h3>指导教师点评</h3>
    		<textarea name = "zdjsdp" rows = "6" cols = "15"></textarea>
    	</div>
    </form>
  </body>
</html>
