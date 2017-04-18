<%@ page contentType="text/html" language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <base href="<%=basePath%>">   
    <title>主页</title>
    <meta http-equiv="content-Type" content="text/html; charset = gbk"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script >
		$(document).ready(
   	 		function () {
       			 $(".main").hover(function () {
            		$(this).children("ul").toggle();
       				}
       			);
    		}
		);
	</script>

  </head>
   <body>
    <h1>科研训练管理平台</h1>
    ${username},欢迎您！
  	<div>
  		<ul id = "middle">
    		<li class = "main"><a href = "#">首页</a></li>
    		<li class = "main"><a href = "#">信息维护</a>
    			<ul>
            		<li><a href="#">基本信息</a></li>
            		<li><a href="#">修改密码</a></li>
        		</ul>
        	</li>
    		<li class = "main"><a href = "#">项目管理</a>
    			<ul>
            		<li><a href="#">项目申报</a></li>
            		<li><a href="#">项目审批</a></li>
            		<li><a href="#">阶段汇报</a></li>
            		<li><a href="#">中期检查</a></li>
        		</ul>
        	</li>
    		<li class = "main"><a href = "#">项目验收</a></li>
    		<li class = "main"><a href = "#">成果管理</a>
    			<ul>
            		<li><a href="#">项目查询</a></li>
            		<li><a href="#">项目统计</a></li>
            		<li><a href="#">资料下载</a></li>
        		</ul>
        	</li>
    	</ul>
    </div>
    <div id = "header">
    </div>
    <div id = "footer"></div>
  </body>
</html>
