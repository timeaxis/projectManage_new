<%@ page contentType="text/html" language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>��Ŀ�걨</title> 
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
  			<th>��Ŀ����</th>
  			<td colspan = "6"><input type = "text" name = "mingcheng" value = ""></td>
  		</tr>
  		<tr>
  			<th rowspan = "2">������</th>
  			<th>����</th>
  			<td><input type = "text" name = "xingming1" value = ""></td>
  			<th>�Ա�</th>
  			<td><input type = "text" name = "xingbie" value = ""></td>
  			<th>��������</th>
  			<td><input type = "text" name = "chushengriqi" value = ""></td>
  		</tr>
  		<tr>
  			<th>Ժϵ</th>
  			<td><input type = "text" name = "yuanxi" value = ""></td>
  			<th>רҵ</th>
  			<td><input type = "text" name = "zhuanye" value = ""></td>
  			<th>�绰</th>
  			<td><input type = "text" name = "dianhua" value = ""></td>
  		</tr>
  		<tr>
  			<th rowspan = "4">������Ա</th>
  			<th>����</th>  			
  			<th>�Ա�</th>	
  			<th>��������</th>
  			<th>Ժϵ</th>			
  			<th>רҵ</th>			
  			<th>�绰</th> 			
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
  			<th rowspan = "2">ָ����ʦ</th>
  			<th>����</th>
  			<td><input type = "text" name = "xingming2" value = ""></td>
  			<th>�Ա�</th>
  			<td><input type = "text" name = "xingbie" value = ""></td>
  			<th>��������</th>
  			<td><input type = "text" name = "chushengriqi" value = ""></td>
  		</tr>
  		<tr>
  			<th>ְ��</th>
  			<td><input type = "text" name = "zhiwu" value = ""></td>
  			<th>�о�����</th>
  			<td><input type = "text" name = "yanjiufangxiang" value = ""></td>
  			<th>�绰</th>
  			<td><input type = "text" name = "dianhua" value = ""></td>
  		</tr>
  		<tr>
  			<th>��Ŀ����</th>
  			<td colspan = "6" rowspan = "15"><textarea name = "xmbj" rows = "6" cols = "15"></textarea></td>
  		</tr>
  		<tr>
  			<th>�о�����</th>
  			<td colspan = "6" rowspan = "15"><textarea name = "yjnr" rows = "6" cols = "15"></textarea></td>
  		</tr>
  		<tr>
  			<th>��ؼ���</th>
  			<td colspan = "6" rowspan = "15"><textarea name = "xgjs" rows = "6" cols = "15"></textarea></td>
  		</tr>
  		<tr>
  			<th>����Ԥ��</th>
  			<td colspan = "6" rowspan = "15"><textarea name = "jfys" rows = "6" cols = "15"></textarea></td>
  		</tr>
  		<tr>
  			<th>ָ����ʦ���</th>
  			<td colspan = "6" rowspan = "15"><textarea name = "zdjsyj" rows = "6" cols = "15"></textarea></td>
  		</tr>
  		<tr>
  			<td align = "center" colspan ="7"><input type = "submit" value = "�ύ"></td>
  		</tr>
  	</table>
   </center>
   </form>	
  </body>
</html>
