<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>密码修改</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="login.css">
	-->
	<script type="text/javascript" src="scripts/login.js"></script>
  </head>
  
  <body style="background:url(./images/messageback.jpg) right center fixed;">
		<div class="global">
			<div>
				<dl>
					<dt>
						<div>
							<h3>修改密码</h3>
						</div>
					</dt>
					<dt></dt>
					<dt>
						<div class='letter'>
							原密码:&nbsp;<input type="password" name="" id="last_password" tabindex='1'/>
							<div class='warning' id='warning_1'><span>原始密码错误</span></div>
						</div>
					</dt>
					<dt>
						<div class='letter'>
							新密码:&nbsp;<input type="password" name="" id="new_password" tabindex='2'/>
							<div class='warning' id='warning_2'><span>新密码长度过短</span></div>
						</div>
					</dt>
					<dt>
						<div class='password'>
							确认新密码:&nbsp;<input type="password" name="" id="final_password" tabindex='3'/>
							<div class='warning' id='warning_3'><span>密码输入不一致</span></div>
						</div>
					</dt>
					<dt>
						<div>
							<input type="button" name="" id="changePassword" value='&nbsp;确&nbsp;定&nbsp;' tabindex='4'/>
							<input type="button" name="" id="back" value='&nbsp;关&nbsp;闭&nbsp;' tabindex='5'/>
						</div>
					</dt>
				</dl>
			</div>
		</div>
		<script type="text/javascript">
			function get(e){
				return document.getElementById(e);
			}
			get('back').onclick=function(){
				get('zc').className='sig sig_out';
				//window.history.back(-2);
				history.go(-1);
			};
		</script>
	</body>
</html>
