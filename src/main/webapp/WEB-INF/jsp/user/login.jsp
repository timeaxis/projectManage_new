<%@ page contentType="text/html" language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <meta http-equiv="Content-Type" content="text/html; charset=gbk"> 
    <title>��½ҳ</title> 
    <Script language="javascript">
    function check(){
	if(form1.name.value==""){
		alert("�������û�������");
		form1.name.focus();
		form1.password.value="";
		return false;
		}
	if(form1.password.value==""){
	alert("���������룡����");
	form1.password.focus();
	return false;
	}
	}
	function goback(){
	window.location.href="index.jsp";
	}
	</script>
  </head>
  
  <body> 
    	<form name = "form1" method = "post" action = "check.jsp" onsubmit = "return check(this)" >
    		<table width = "100%" border = "0" align = "center" cellpadding="0" cellspacing="0">
    			<tr>
    				<td><h1 align = "center">��ѧ������ѵ������ƽ̨</h1></td>
    			</tr>
    			<tr>
    				<td align = "center" height = "40">�û���¼</td>
    			</tr>
    			<tr>
    				<td align = "center">��ݣ�<select name = "shenfen" size = "1">
    				<option value = "gly">����Ա
    			    <option value = "js">��ʦ
    			    <option value = "xs">ѧ��
    				</select>
    				</td>
    			</tr>
    			<tr>
    				<td align = "center">�û���<input type = "text" name = "name" value = ""/></td>
    			</tr>
    			<tr>
    				<td align = "center">���룺<input type = "password" name = "password" value = ""/></td>
    			</tr>
    			<tr>
    				<td align = "center" height = "40">&nbsp;&nbsp;
    				    <input type = "submit" value = "��¼" onclick = "return check()">
    					<input type = "button" value = "����" onclick = "goback()"/>
    				</td>	
    			</tr>
    		</table>		
    	</form>	
  </body>
</html>
