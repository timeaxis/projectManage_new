<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@taglib prefix="logic" uri="http://jakarta.apache.org/struts/tags-logic"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("menuClass", "goods") ;
String pageIndex = request.getParameter("pageIndex");
Integer total = (Integer)request.getAttribute("count");
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>商品管理</title>
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
    
    <!-- 分页插件-->
   
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
        <div class="tpl-content-wrapper">
            <div class="row-content am-cf">
                <div class="row">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title  am-cf">商品列表</div>


                            </div>
                            <div class="widget-body  am-fr">

                                <div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
                                    <div class="am-form-group">
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs">
                                                <button type="button" class="am-btn am-btn-default am-btn-success" onclick="addGoods()"><span class="am-icon-plus"></span> 新增</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <form action="goods.do" method="post">
                                	<input type="hidden" name="operate" value="listGoods">
                                	<input type="hidden" name="pageIndex" value="0">
                               
                                <div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
                                    <div class="am-form-group tpl-table-list-select">
                                        <select data-am-selected="{btnSize: 'sm'}">
              <option value="1">手机</option>
            </select>
                                    </div>
                                </div>
                                <div class="am-u-sm-12 am-u-md-12 am-u-lg-3">
                                    <div class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                        <input type="text" name="name" id="name"  value ="${name}" class="am-form-field  ">
                                        <span class="am-input-group-btn">
            <button class="am-btn  am-btn-default am-btn-success tpl-table-list-field am-icon-search" type="submit"></button>
          </span>
                                    </div>
                                </div>
								 </form>
                                <div class="am-u-sm-12">
                                    <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black ">
                                        <thead>
                                            <tr>
                                            	<th width="5%">序号</th>
                                                <th width="13%">商品略图</th>
                                                <th width="10%">商品名称</th>
                                                <th width="20%">商品详情</th>
                                                <th width="9%">报价</th>
                                                <th width="9%">我的报价</th>
                                                <th width="20%">商品连接地址</th>
                                                <th width="14%">操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<logic:notPresent name="list">
												暂无数据                                        	
                                        	</logic:notPresent>
                                        	<logic:present name="list">
                                        		<logic:iterate id="goods" name="list">
                                        			<tr class="gradeX">
                                        			<td class="am-text-middle">${goods.order_num}</td>
                                                <td>
                                                    <img src="${goods.goods_img}" class="tpl-table-line-img" alt="">
                                                </td>
                                                <td class="am-text-middle">${goods.name}</td>
                                                <td class="am-text-middle">${goods.detail}</td>
                                                <td class="am-text-middle">${goods.price}</td>
                                                <td class="am-text-middle">${goods.myprice}</td>
                                                <td class="am-text-middle">${goods.goods_url}</td>
                                                <td class="am-text-middle">
                                                    <div class="tpl-table-black-operation">
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑
                                                        </a>
                                                        <a href='javascript:deleteGoods("${goods.id}");' class="tpl-table-black-operation-del" dataid="${goods.id}">
                                                            <i class="am-icon-trash"></i> 删除
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        		</logic:iterate>
                                        	</logic:present>
                                            
                                            <!-- more data -->
                                        </tbody>
                                    </table>
                                </div>
                                <div id="page" class="m-pagination" style="float: right;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="am-modal am-modal-no-btn" tabindex="-1" id="addGoodsDialog">
	  <div class="am-modal-dialog">
	    <div class="am-modal-hd">添加商品
	      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
	    </div>
	    <div class="am-modal-bd">
	      		<div class="row">
                    <div class="am-u-sm-12 am-u-md-8 am-u-lg-12" >
                        <div class="widget am-cf" >
                            <div class="widget-body am-fr" >
                                <form class="am-form tpl-form-border-form" id="addForm" enctype="multipart/form-data" method="post" action="goods.do">
                                <input type="hidden" name="operate" value="saveGoods">
                                <div class="am-form-group">
                                        <label for="user-name" class="am-u-sm-12 am-form-label am-text-left">排列顺序（用来显示顺序）</label>
                                        <div class="am-u-sm-12">
                                            <input type="text" class="tpl-form-input am-margin-top-xs" id="order_num" name="order_num" placeholder="请输入排列顺序">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="user-name" class="am-u-sm-12 am-form-label am-text-left">商品名称</label>
                                        <div class="am-u-sm-12">
                                            <input type="text" class="tpl-form-input am-margin-top-xs" id="name" name="name" placeholder="请输入商品名称">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="user-name" class="am-u-sm-12 am-form-label am-text-left">商品报价</label>
                                        <div class="am-u-sm-12">
                                            <input type="text" class="tpl-form-input am-margin-top-xs" name="price" id="price" placeholder="请输入商品报价">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="user-name" class="am-u-sm-12 am-form-label am-text-left">我的报价</label>
                                        <div class="am-u-sm-12">
                                            <input type="text" class="tpl-form-input am-margin-top-xs"  name="price2"  id="price2" placeholder="请输入我的报价">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="user-name" class="am-u-sm-12 am-form-label am-text-left">商品链接</label>
                                        <div class="am-u-sm-12">
                                            <input type="text" class="tpl-form-input am-margin-top-xs" id="goods_url" name="goods_url" placeholder="请输入商品链接">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="user-weibo" class="am-u-sm-12 am-form-label  am-text-left">商品缩略图
                                             <div class="am-form-group am-form-file">
                                                <div class="tpl-form-file-img">
                                                    <button type="button" class="am-btn am-btn-danger am-btn-sm " >
    												<i class="am-icon-cloud-upload"></i> 添加图片</button>
                                                	<input id="file" type="file" multiple="" name="file">
                                                </div> 
                                            </div>                 
                                        </label>
                                    </div>

                                    <div class="am-form-group">
                                        <label for="user-intro" class="am-u-sm-12 am-form-label  am-text-left">商品详情</label>
                                        <div class="am-u-sm-12 am-margin-top-xs">
                                            <textarea class="" rows="3" id="detail" placeholder="请输入商品详情" name="detail" ></textarea>
                                        </div>
                                    </div>

                                    <div class="am-form-group">
                                        <div class="am-u-sm-12 am-u-sm-push-12">
                                            <button type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success " onclick="add()" >提交</button>
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
	
	<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirm">
	  <div class="am-modal-dialog">
	    <div class="am-modal-hd">提示</div>
	    <div class="am-modal-bd">
	      你，确定要删除这条记录吗？
	    </div>
	    <div class="am-modal-footer">
	      <span class="am-modal-btn" data-am-modal-cancel>取消</span>
	      <span class="am-modal-btn" data-am-modal-confirm>确定</span>
	    </div>
	  </div>
	</div>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/amazeui.datatables.min.js"></script>
    <script src="assets/js/dataTables.responsive.min.js"></script>
    <script src="assets/js/app.js"></script>
<script type="text/javascript">
//分页
var page_index = parseInt("<%=pageIndex%>");
var page_size = 10;
var total = parseInt("<%=total%>");
$("#page").pagination({
    pageIndex: page_index,
    pageSize: page_size,
    total: total,
    debug: true,
    showInfo: false,
    showJump: false,
    showPageSizes: false,
    loadFirstPage: true
});
$("#page").on("pageClicked", function (event, data) {
	location.href = "goods.do?operate=listGoods&pageIndex="+data.pageIndex;
});
//添加商品弹出框
function addGoods(){
	$('#addGoodsDialog').modal();
}

//添加商品
function add(){
	var isSubmit = true;
	var imgPath = $("#file").val();
	var name = $("#addForm input[id=name]").val();
	var price = $("#price").val();
	var price2 = $("#price2").val();
	var detail =  $("#detail").val();
	var goods_url =  $("#goods_url").val();
	var order_num = $("#order_num").val();
	if (order_num == "") {
		isSubmit = false;
        alert("请输入排列顺序！");
        return;
    }
    if (name == "") {
    	isSubmit = false;
        alert("请输入名称！");
        return;
    }
    if (price == "") {
    	isSubmit = false;
        alert("请输入报价！");
        return;
    }
    if (price2 == "") {
    	isSubmit = false;
        alert("请输入我的报价！");
        return;
    }
    if (imgPath == "") {
    	isSubmit = false;
        alert("请选择上传的缩略图！");
        return;
    }
    if (detail == "") {
    	isSubmit = false;
        alert("请输入商品详情！");
        return;
    }
    //判断上传文件的后缀名
    var strExtension = imgPath.substr(imgPath.lastIndexOf('.') + 1);
    if (strExtension != 'jpg' && strExtension != 'gif'
    && strExtension != 'png' && strExtension != 'bmp') {
    	isSubmit = false;
        alert("请选择图片文件");
        return;
    }
		 $('#addForm').ajaxSubmit(function(data) {
		    	var d = eval('(' + data + ')');
		    	if(d.result == "OK"){
		    		location.href = "goods.do?operate=listGoods&pageIndex="+page_index;
		    	}else{
		    		alert("保存出错！");
		    	}
		    });
}



//删除商品
function deleteGoods(dataid){
	var id = dataid;
	$('#my-confirm').modal({
	    relatedTarget: this,
	    onConfirm: function(options) {
	    	 $.ajax({
	    	        type: "POST",
	    	        url: "goods.do?operate=delGoods&id="+id,
	    	        cache: false,
	    	        success: function(data) {
	    	        	location.href = "goods.do?operate=listGoods&pageIndex="+page_index;
	    	        },
	    	        error: function(XMLHttpRequest, textStatus, errorThrown) {
	    	            alert("删除失败，请检查网络后重试");
	    	        }
	    	    });
	    },
	    // closeOnConfirm: false,
	    onCancel: function() {
	      //alert('取消');
	    }
	  });
}


</script>
</body>

</html>