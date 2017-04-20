<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("menuClass", "main") ;
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <script src="assets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="assets/css/app.css">
    <script src="assets/js/jquery.min.js"></script>
	
	
	
	<link href="js/pages/mricode.pagination.css" rel="stylesheet" />
    <script src="js/pages/jquery-2.1.4.min.js"></script>
    <script src="js/pages/mricode.pagination.js"></script>
    <script src="js/jquery.form.js"></script>
</head>

<body data-type="index">
    <script src="assets/js/theme.js"></script>
    <div class="am-g tpl-g">
        <!-- 头部 -->
       <%@include file="/WEB-INF/jsp/main/menu.jsp" %>
        <!-- 内容区域 -->


		<div class="am-modal am-modal-no-btn" tabindex="-1" id="updatePwdDialog">
	  <div class="am-modal-dialog">
	    <div class="am-modal-hd">修改密码
	      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
	    </div>
	    <div class="am-modal-bd">
	      		<div class="row">
                    <div class="am-u-sm-12 am-u-md-8 am-u-lg-12" >
                        <div class="widget am-cf" >
                            <div class="widget-body am-fr" >
                                <form class="am-form tpl-form-border-form" id="updatePwdForm" enctype="multipart/form-data" method="post" action="user.do">
                                <input type="hidden" name="operate" value="updatePwd">
                                    <div class="am-form-group">
                                        <label for="user-name" class="am-u-sm-12 am-form-label am-text-left">原始密码</label>
                                        <div class="am-u-sm-12">
                                            <input type="password" class="tpl-form-input am-margin-top-xs" id="old_pwd" name="old_pwd" placeholder="请输入原始密码" >
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="user-name" class="am-u-sm-12 am-form-label am-text-left">新密码</label>
                                        <div class="am-u-sm-12">
                                            <input type="password" class="tpl-form-input am-margin-top-xs" name="new_pwd" id="new_pwd" placeholder="请输入新密码">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="user-name" class="am-u-sm-12 am-form-label am-text-left">重复新密码</label>
                                        <div class="am-u-sm-12">
                                            <input type="password" class="tpl-form-input am-margin-top-xs"  name="new_pwd2"  id="new_pwd2" placeholder="请输入再次新密码">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <div class="am-u-sm-12 am-u-sm-push-12">
                                            <button type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success " onclick="update()" >提交</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
	    </div>
	  </div>
	</div>


        <%@include file="/WEB-INF/jsp/main/main_content.jsp" %>
    </div>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/amazeui.datatables.min.js"></script>
    <script src="assets/js/dataTables.responsive.min.js"></script>
    <script src="assets/js/app.js"></script>
<script type="text/javascript">
//添加商品弹出框
function updatePwd(){
	$('#updatePwdDialog').modal();
}



</script>
</body>

</html>