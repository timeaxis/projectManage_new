<%@ page contentType="text/html" language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>项目申报</title> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <form name = "shenbao" action = "" method = "post">
   <body>
   <center>
  	<table border = "1">
  		<tr>
  			<th>项目名称</th>
  			<td colspan = "6"><input type = "text" name = "mingcheng" value = ""></td>
  		</tr>
  		<tr>
  			<th rowspan = "2">申请人</th>
  			<th>姓名</th>
  			<td><input type = "text" name = "xingming1" value = ""></td>
  			<th>性别</th>
  			<td><input type = "text" name = "xingbie" value = ""></td>
  			<th>出生日期</th>
  			<td><input type = "text" name = "chushengriqi" value = ""></td>
  		</tr>
  		<tr>
  			<th>院系</th>
  			<td><input type = "text" name = "yuanxi" value = ""></td>
  			<th>专业</th>
  			<td><input type = "text" name = "zhuanye" value = ""></td>
  			<th>电话</th>
  			<td><input type = "text" name = "dianhua" value = ""></td>
  		</tr>
  		<tr>
  			<th rowspan = "4">其他成员</th>
  			<th>姓名</th>  			
  			<th>性别</th>	
  			<th>出生日期</th>
  			<th>院系</th>			
  			<th>专业</th>			
  			<th>电话</th> 			
  		</tr>
  		<tr>
  			<td><input type = "text" name = "xingming" value = ""></td>
  			<td><input type = "text" name = "xingbie" value = ""></td>
  			<td><input type = "text" name = "chushengriqi" value = ""></td>
  			<td><input type = "text" name = "yuanxi" value = ""></td>
  			<td><input type = "text" name = "zhuanye" value = ""></td>
  			<td><input type = "text" name = "dianhua" value = ""></td>
  		</tr>
  		<tr>
  			<td><input type = "text" name = "xingming" value = ""></td>
  			<td><input type = "text" name = "xingbie" value = ""></td>
  			<td><input type = "text" name = "chushengriqi" value = ""></td>
  			<td><input type = "text" name = "yuanxi" value = ""></td>
  			<td><input type = "text" name = "zhuanye" value = ""></td>
  			<td><input type = "text" name = "dianhua" value = ""></td>
  		</tr>
  		<tr>
  			<td><input type = "text" name = "xingming" value = ""></td>
  			<td><input type = "text" name = "xingbie" value = ""></td>
  			<td><input type = "text" name = "chushengriqi" value = ""></td>
  			<td><input type = "text" name = "yuanxi" value = ""></td>
  			<td><input type = "text" name = "zhuanye" value = ""></td>
  			<td><input type = "text" name = "dianhua" value = ""></td>
  		</tr>
  		<tr>
  			<th rowspan = "2">指导教师</th>
  			<th>姓名</th>
  			<td><input type = "text" name = "xingming2" value = ""></td>
  			<th>性别</th>
  			<td><input type = "text" name = "xingbie" value = ""></td>
  			<th>出生日期</th>
  			<td><input type = "text" name = "chushengriqi" value = ""></td>
  		</tr>
  		<tr>
  			<th>职务</th>
  			<td><input type = "text" name = "zhiwu" value = ""></td>
  			<th>研究方向</th>
  			<td><input type = "text" name = "yanjiufangxiang" value = ""></td>
  			<th>电话</th>
  			<td><input type = "text" name = "dianhua" value = ""></td>
  		</tr>
  		<tr>
  			<th>项目背景</th>
  			<td colspan = "6" rowspan = "15"><textarea name = "xmbj" rows = "6" cols = "15"></textarea></td>
  		</tr>
  		<tr>
  			<th>研究内容</th>
  			<td colspan = "6" rowspan = "15"><textarea name = "yjnr" rows = "6" cols = "15"></textarea></td>
  		</tr>
  		<tr>
  			<th>相关技术</th>
  			<td colspan = "6" rowspan = "15"><textarea name = "xgjs" rows = "6" cols = "15"></textarea></td>
  		</tr>
  		<tr>
  			<th>经费预算</th>
  			<td colspan = "6" rowspan = "15"><textarea name = "jfys" rows = "6" cols = "15"></textarea></td>
  		</tr>
  		<tr>
  			<th>指导教师意见</th>
  			<td colspan = "6" rowspan = "15"><textarea name = "zdjsyj" rows = "6" cols = "15"></textarea></td>
  		</tr>
  		<tr>
  			<td align = "center" colspan ="7"><input type = "submit" value = "提交"></td>
  		</tr>
  	</table>
   </center>
   </form>	
  </body>
</html>
