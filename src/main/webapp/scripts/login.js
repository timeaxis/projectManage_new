//�޸�����
function changepwd(){
	var newPassword = $("#new_password").val();
	var finalPassword = $("#final_password").val();
	if(newPassword.length < 6) {
		alert("���볤�Ȳ���С��6λ.");
		return;
	} else if(newPassword != finalPassword) {
		alert("��������������벻һ��.");
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
			alert("����ʧ��.");
		}
	});
}

//����˷���·��
var basePath = "/manage/";