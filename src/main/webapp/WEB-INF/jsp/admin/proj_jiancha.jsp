<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>中期检查</title>   
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
  				<td colspan = "3"><input type = "text" name = "mingcheng" value = ""></td>
  			</tr>
  			<tr>
  				<th>负责人</th>
  				<td><input type = "text" name = "xingming1" value = ""></td>
  				<th>主要成员</th>
  				<td><input type = "text" name = "zhuyaochengyuan" value = ""></td>
  			</tr>
  			<tr>
  				<th>项目开始时间</th>
  				<td><input type = "text" name = "xmkssj" value = ""></td>
  				<th>项目结束时间</th>
  				<td><input type = "text" name = "xmjssj" value = ""></td>
  			</tr>
  			<tr>
  				<th>项目研究内容</th>
  				<td colspan = "3" rowspan = "15"><textarea name = "xmyjnr" rows = "6" cols = "15"></textarea></td>
  			</tr>
  			<tr>
  				<th>项目完成情况</th>
  				<td colspan = "3" rowspan = "15"><textarea name = "xmyjnr" rows = "6" cols = "15"></textarea></td>
  			</tr>
  			<tr>
  				<th>计费支出及研究困难</th>
  				<td colspan = "3" rowspan = "15"><textarea name = "xmyjnr" rows = "6" cols = "15"></textarea></td>
  			</tr>
  			<tr>
  				<td align = "center" colspan ="4"><input type = "submit" value = "提交"></td>
  			</tr>
    	</table>
    	<table>
    		<tr>
    			<th>指导教师点评及意见</th>
    			<td colspan = "3" rowspan = "15"><textarea name = "zdjsdpjyj" rows = "6" cols = "15"></textarea></td>
    		</tr>
    		<tr>
  				<td align = "center" colspan ="4"><input type = "submit" value = "提交"></td>
  			</tr>
    	</table>
    </form>
  </body>
</html>
