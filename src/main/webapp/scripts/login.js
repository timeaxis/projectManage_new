//修改密码
function changepwd(){
	var newPassword = $("#new_password").val();
	var finalPassword = $("#final_password").val();
	if(newPassword.length < 6) {
		alert("密码长度不能小于6位.");
		return;
	} else if(newPassword != finalPassword) {
		alert("两次输入的新密码不一致.");
		return;
	}
	
	var lastPassword = $("#last_password").val();
	$.ajax({
		type:"post",
		url:basePath+"user/changePassword.do",
		dataType:"json",
		data:{"lastPassword":lastPassword,"newPassword":newPassword},
		success:function(result) {
			if(result.status==0) {
				alert(result.data);
				logout();
			} else {
				alert(result.message);
			}
		},
		error:function(xhr,status,error) {
			alert("请求失败.");
		}
	});
}

//服务端访问路径
var basePath = "/manage/";