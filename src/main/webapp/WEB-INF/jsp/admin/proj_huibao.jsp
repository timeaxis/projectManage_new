<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>�׶λ㱨</title>   
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
    			<th>��һ�׶�</th>
    			<td><input type = "text" name = "diyijieduan" value = ""></td>  			
    		</tr>	
    		<tr>
    			<th>��Ҫ����</th>
    			<td><textarea name = "zygz" rows = "6" cols = "15"></textarea></td>
    		</tr>
    		<tr>
    			<th>ȡ�óɹ�</th>
    			<td><textarea name = "qdcg" rows = "6" cols = "15"></textarea></td>
    		</tr>
    		<tr>
    			<td colspan = "2" align = "center"><input type = "submit" value = "�ύ"></td>
    		</tr>
    	</table>
    	<div>
    		<h3>ָ����ʦ����</h3>
    		<textarea name = "zdjsdp" rows = "6" cols = "15"></textarea>
    	</div>
    	<table>
    		<tr>
    			<td>�ڶ��׶�</td>
    			<td><input type = "text" name = "dierjieduan" value = ""></td>  <%-- ��д�㱨ʱ��� --%>		
    		</tr>	
    		<tr>
    			<td>��Ҫ����</td>
    			<td><textarea name = "zygz" rows = "6" cols = "15"></textarea></td>
    		</tr>
    		<tr>
    			<td>ȡ�óɹ�</td>
    			<td><textarea name = "qdcg" rows = "6" cols = "15"></textarea></td>
    		</tr>
    		<tr>
    			<td colspan = "2" align = "center"><input type = "submit" value = "�ύ"></td>
    		</tr>
    	</table>
    	<div>
    		<h3>ָ����ʦ����</h3>
    		<textarea name = "zdjsdp" rows = "6" cols = "15"></textarea>
    	</div>
    	<table>
    		<tr>
    			<td>�����׶�</td>
    			<td><input type = "text" name = "disanjieduan" value = ""></td>  			
    		</tr>	
    		<tr>
    			<td>��Ҫ����</td>
    			<td><textarea name = "zygz" rows = "6" cols = "15"></textarea></td>
    		</tr>
    		<tr>
    			<td>ȡ�óɹ�</td>
    			<td><textarea name = "qdcg" rows = "6" cols = "15"></textarea></td>
    		</tr>
    		<tr>
    			<td colspan = "2" align = "center"><input type = "submit" value = "�ύ"></td>
    		</tr>
    	</table>
    	<div>
    		<h3>ָ����ʦ����</h3>
    		<textarea name = "zdjsdp" rows = "6" cols = "15"></textarea>
    	</div>
    </form>
  </body>
</html>
