<%@ page contentType="text/html" language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>基本信息</title>
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
  <form name = "form1" action = "" method = "post">
    <center>
    	<table>
    		<tr>
    			<td>学号：</td>
    			<td><input type = "text" name = "name" value = ""></td>
    			<td colspan = "2" rowspan = "3"><img src = "#"/></td>
    		</tr>
    		<tr>
    			<td>姓名：</td>
    			<td><input type = "text" name = "xingming" value = ""></td>
    		</tr>
    		<tr>
    			<td>性别：</td>
    			<td>
    				<select>
                  		<option value="男">男</option>
						<option value="女">女</option>
					</select>
				</td>
    		</tr>
    		<tr>
    			<td>出生日期：</td>
    			<td><input type = "text" name = "chushengriqi" value = ""></td>
    			<td>民族：</td>
    			<td><input type = "text" name = "minzu" value = ""></td>
    		</tr>
    		<tr>
    			<td>政治面貌：</td>
    			<td>
    				<select>
                  		<option value="群众">群众</option>
						<option value="共青团员">共青团员</option>
						<option value="预备党员">预备党员</option>
						<option value="党员">党员</option>
					</select>
    			</td>
    			<td>入学日期：</td>
    			<td><input type = "text" name = "ruxueriqi" value = ""></td>
    		</tr>
    		<tr>
    			<td>专业：</td>
    			<td><input type = "text" name = "zhuanye" value = ""></td>
    			<td>院系：</td>
    			<td><input type = "text" name = "yuanxi" value = ""></td>
    		</tr>
    		<tr>
    			<td>联系电话：</td>
    			<td><input type = "text" name = "dianhua" value = ""></td>
    			<td>电子邮箱：</td>
    			<td><input type = "text" name = "youxiang" value = ""></td>
    		</tr>
    		<tr>
    			<td>家庭地址：</td>
    			<td colspan = "3"><input type = "text" name = "dizhi" value = ""></td>
    		</tr>
    		<tr>
    			<td>备注：</td>
    			<td colspan = "3"><input type = "text" name = "beizhu" value = ""></td>
    		</tr>
    		<tr>
    			<td colspan = "4" align = "center"><input type = "submit" value = "提交"></td>
    		</tr>
    	</table>
    </center>
  </form>
  </body>
</html>
