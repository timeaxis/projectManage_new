<%@ page contentType="text/html" language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>������Ϣ</title>
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
    			<td>ѧ�ţ�</td>
    			<td><input type = "text" name = "name" value = ""></td>
    			<td colspan = "2" rowspan = "3"><img src = "#"/></td>
    		</tr>
    		<tr>
    			<td>������</td>
    			<td><input type = "text" name = "xingming" value = ""></td>
    		</tr>
    		<tr>
    			<td>�Ա�</td>
    			<td>
    				<select>
                  		<option value="��">��</option>
						<option value="Ů">Ů</option>
					</select>
				</td>
    		</tr>
    		<tr>
    			<td>�������ڣ�</td>
    			<td><input type = "text" name = "chushengriqi" value = ""></td>
    			<td>���壺</td>
    			<td><input type = "text" name = "minzu" value = ""></td>
    		</tr>
    		<tr>
    			<td>������ò��</td>
    			<td>
    				<select>
                  		<option value="Ⱥ��">Ⱥ��</option>
						<option value="������Ա">������Ա</option>
						<option value="Ԥ����Ա">Ԥ����Ա</option>
						<option value="��Ա">��Ա</option>
					</select>
    			</td>
    			<td>��ѧ���ڣ�</td>
    			<td><input type = "text" name = "ruxueriqi" value = ""></td>
    		</tr>
    		<tr>
    			<td>רҵ��</td>
    			<td><input type = "text" name = "zhuanye" value = ""></td>
    			<td>Ժϵ��</td>
    			<td><input type = "text" name = "yuanxi" value = ""></td>
    		</tr>
    		<tr>
    			<td>��ϵ�绰��</td>
    			<td><input type = "text" name = "dianhua" value = ""></td>
    			<td>�������䣺</td>
    			<td><input type = "text" name = "youxiang" value = ""></td>
    		</tr>
    		<tr>
    			<td>��ͥ��ַ��</td>
    			<td colspan = "3"><input type = "text" name = "dizhi" value = ""></td>
    		</tr>
    		<tr>
    			<td>��ע��</td>
    			<td colspan = "3"><input type = "text" name = "beizhu" value = ""></td>
    		</tr>
    		<tr>
    			<td colspan = "4" align = "center"><input type = "submit" value = "�ύ"></td>
    		</tr>
    	</table>
    </center>
  </form>
  </body>
</html>
