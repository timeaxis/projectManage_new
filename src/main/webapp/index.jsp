<%@ page contentType="text/html" language="java" import="java.util.*" pageEncoding="gbk" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>��ѧ������ѵ������ƽ̨</title>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script language="JavaScript">
        function login() {
            $("user").submit();
        }
    </script>
    <link href="js/css_ns6up.css" type="text/css" rel="stylesheet">
    <link href="js/style.css" rel="stylesheet" type="text/css">
</head>

<body class="conten">
<div class="middle">
    <div class="logo" ></div>
    <div class="bg_middle">
        <div class="login">
            <div class="ico"></div>
            <div class="clear"></div>

                <ul class="in_list" style="margin-top:0px;*margin-top:-10px;">
                    <s:form action="login.action" method="POST" name="user">
                    <li>
                        <label>�û�����</label>
                        <br>
                        <input type="text" name="user.username" id="IDToken1" value="" class="input">
                    </li>
                    <li>
                        <label> �ܡ��룺</label>
                        <br>
                        <input type="password" id="passwd" name="user.password" value="" class="input">
                    </li>
                    <li>
                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                            <tbody>
                            <tr>
                                <td valign="middle">
                                    <label> ���ݣ�</label>
                                    <select name = "user.userType" size = "1">
                                        <option value = "gly">����Ա
                                        <option value = "js">��ʦ
                                        <option value = "xs">ѧ��
                                    </select>
                                </td>
                                <td valign="middle" align="right">
                                    <input id="btn_login" type="image" onclick="login()"
                                           src="images/btn_login.png">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </li>
                        <s:token></s:token>
                    </s:form>
                </ul>
        </div>
    </div>
    <div class="copyright">
        <p></p>
        <p>Copyright @ 2017 by xrx</p>
    </div>
</div>


</body>
</html>