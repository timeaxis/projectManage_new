<%@ page contentType="text/html" language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <meta http-equiv="Content-Type" content="text/html; charset=gbk"> 
    <title>登陆页</title> 
    <Script language="javascript">
    function check(){
	if(form1.name.value==""){
		alert("请输入用户名！！");
		form1.name.focus();
		form1.password.value="";
		return false;
		}
	if(form1.password.value==""){
	alert("请输入密码！！！");
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
    				<td><h1 align = "center">大学生科研训练管理平台</h1></td>
    			</tr>
    			<tr>
    				<td align = "center" height = "40">用户登录</td>
    			</tr>
    			<tr>
    				<td align = "center">身份：<select name = "shenfen" size = "1">
    				<option value = "gly">管理员
    			    <option value = "js">教师
    			    <option value = "xs">学生
    				</select>
    				</td>
    			</tr>
    			<tr>
    				<td align = "center">用户：<input type = "text" name = "name" value = ""/></td>
    			</tr>
    			<tr>
    				<td align = "center">密码：<input type = "password" name = "password" value = ""/></td>
    			</tr>
    			<tr>
    				<td align = "center" height = "40">&nbsp;&nbsp;
    				    <input type = "submit" value = "登录" onclick = "return check()">
    					<input type = "button" value = "重置" onclick = "goback()"/>
    				</td>	
    			</tr>
    		</table>		
    	</form>	
  </body>
</html>
