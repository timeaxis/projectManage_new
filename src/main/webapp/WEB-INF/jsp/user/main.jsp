<%@ page contentType="text/html" language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <base href="<%=basePath%>">   
    <title>��ҳ</title>
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
    <h1>����ѵ������ƽ̨</h1>
    ${username},��ӭ����
  	<div>
  		<ul id = "middle">
    		<li class = "main"><a href = "#">��ҳ</a></li>
    		<li class = "main"><a href = "#">��Ϣά��</a>
    			<ul>
            		<li><a href="#">������Ϣ</a></li>
            		<li><a href="#">�޸�����</a></li>
        		</ul>
        	</li>
    		<li class = "main"><a href = "#">��Ŀ����</a>
    			<ul>
            		<li><a href="#">��Ŀ�걨</a></li>
            		<li><a href="#">��Ŀ����</a></li>
            		<li><a href="#">�׶λ㱨</a></li>
            		<li><a href="#">���ڼ��</a></li>
        		</ul>
        	</li>
    		<li class = "main"><a href = "#">��Ŀ����</a></li>
    		<li class = "main"><a href = "#">�ɹ�����</a>
    			<ul>
            		<li><a href="#">��Ŀ��ѯ</a></li>
            		<li><a href="#">��Ŀͳ��</a></li>
            		<li><a href="#">��������</a></li>
        		</ul>
        	</li>
    	</ul>
    </div>
    <div id = "header">
    </div>
    <div id = "footer"></div>
  </body>
</html>
