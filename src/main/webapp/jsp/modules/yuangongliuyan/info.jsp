<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>

</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="content">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
				
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mr-auto" id="navUl">
							
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">编辑员工留言</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item">员工留言管理</li>
								<li class="breadcrumb-item active">编辑员工留言</li>
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">员工留言信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
																					<div class="form-group col-md-6">
																								<label>留言标题</label>
												
																								<input id="liuyanbiaoti" name="liuyanbiaoti" class="form-control" v-model="ruleForm.liuyanbiaoti" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
												
																								
																
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>留言日期</label>
												
																								<input id="liuyanriqi" name="liuyanriqi" class="form-control" v-model="ruleForm.liuyanriqi" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>备注</label>
												
																								<input id="beizhu" name="beizhu" class="form-control" v-model="ruleForm.beizhu" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>员工工号</label>
												
																								<input id="yuangonggonghao" name="yuangonggonghao" class="form-control" v-model="ruleForm.yuangonggonghao" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>员工姓名</label>
												
																								<input id="yuangongxingming" name="yuangongxingming" class="form-control" v-model="ruleForm.yuangongxingming" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>部门</label>
												
																								<input id="bumen" name="bumen" class="form-control" v-model="ruleForm.bumen" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>职位</label>
												
																								<input id="zhiwei" name="zhiwei" class="form-control" v-model="ruleForm.zhiwei" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>联系电话</label>
												
																								<input id="lianxidianhua" name="lianxidianhua" class="form-control" v-model="ruleForm.lianxidianhua" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
																								<label>是否审核</label>
												
																								<input id="sfsh" name="sfsh" class="form-control" v-model="ruleForm.sfsh" readonly>
																							</div>
											
																					<div class="form-group col-md-6">
												
																								
																
																							</div>
											
										
																																																													<div class="form-group  col-md-12">
												<label>留言内容</label>
												<script id="liuyanneirongEditor" type="text/plain" style="width:800px;height:230px;"></script>
												<script type="text/javascript">
												    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
												   //相见文档配置属于你自己的编译器
												 var liuyanneirongUe = UE.getEditor('liuyanneirongEditor', {
													toolbars: [
														[
															'undo', //撤销
															'bold', //加粗
															'redo', //重做
															'underline', //下划线
															'horizontal', //分隔线
															'inserttitle', //插入标题
															'cleardoc', //清空文档
															'fontfamily', //字体
															'fontsize', //字号
															'paragraph', //段落格式
															'inserttable', //插入表格
															'justifyleft', //居左对齐
															'justifyright', //居右对齐
															'justifycenter', //居中对
															'justifyjustify', //两端对齐
															'forecolor', //字体颜色
															'fullscreen', //全屏
															'edittip ', //编辑提示
															'customstyle', //自定义标题
															 ]
														]
													});
												</script>
												<input type="hidden" name="liuyanneirong" id="liuyanneirong-input">
											</div>
																																																																																																																																																																																																																																																																																																																																																																																													<div class="form-group  col-md-12">
												<label>审核回复</label>
												<script id="shhfEditor" type="text/plain" style="width:800px;height:230px;"></script>
												<script type="text/javascript">
												    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
												   //相见文档配置属于你自己的编译器
												 var shhfUe = UE.getEditor('shhfEditor', {
													toolbars: [
														[
															'undo', //撤销
															'bold', //加粗
															'redo', //重做
															'underline', //下划线
															'horizontal', //分隔线
															'inserttitle', //插入标题
															'cleardoc', //清空文档
															'fontfamily', //字体
															'fontsize', //字号
															'paragraph', //段落格式
															'inserttable', //插入表格
															'justifyleft', //居左对齐
															'justifyright', //居右对齐
															'justifycenter', //居中对
															'justifyjustify', //两端对齐
															'forecolor', //字体颜色
															'fullscreen', //全屏
															'edittip ', //编辑提示
															'customstyle', //自定义标题
															 ]
														]
													});
												</script>
												<input type="hidden" name="shhf" id="shhf-input">
											</div>
																																							<div class="form-group col-md-6 mb-3">
										<button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "yuangongliuyan";
		var pageType = "add-or-update";
		var updateId = "";		

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "yuangongliuyan/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 填充富文本框
		function setContent(){
																if(ruleForm.liuyanneirong != null && ruleForm.liuyanneirong != 'null' && ruleForm.liuyanneirong != ''){
					var mes = '' + ruleForm.liuyanneirong;
					var liuyanneirongUeditor = UE.getEditor('liuyanneirongEditor');
					liuyanneirongUeditor.ready(function() {
						liuyanneirongUeditor.setContent(mes);
						liuyanneirongUeditor.setDisabled('fullscreen');
					});
				}
																																																													if(ruleForm.shhf != null && ruleForm.shhf != 'null' && ruleForm.shhf != ''){
					var mes = '' + ruleForm.shhf;
					var shhfUeditor = UE.getEditor('shhfEditor');
					shhfUeditor.ready(function() {
						shhfUeditor.setContent(mes);
						shhfUeditor.setDisabled('fullscreen');
					});
				}
								}  

		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				$("#submitBtn").addClass("修改");
				updateId = id;
				window.sessionStorage.removeItem('id');
				$.ajax({ 
	                type: "GET",
	                url: baseUrl + "yuangongliuyan/info/" + id,
	                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
	                success: function(res){           
	                	if(res.code == 0){
	                		ruleForm = res.data
							showImg();
							setContent();		
							setMediaUrl();	
							setDownloadBtn();
			    		}else if(res.code ==401){
			    			 <%@ include file="../../static/toLogin.jsp"%>	
			    		}else{
							 alert(res.msg);
						}
	                },
	            });
			}else{
				$("#submitBtn").addClass("新增");
			}
		}	

		//图片显示
		function showImg(){
																																																																																		}		
		function exit(){
			window.sessionStorage.removeItem("id");
			window.location.href = "list.jsp";
		}			
		// 下载
		function download(fileName){
			var url = baseUrl+'file/download?fileName='+fileName;
			window.open(url);
		}	
		//设置下载
		function setDownloadBtn(){
																																																																																		}			
		//设置音视频播放链接
		function setMediaUrl(){
																																																																																		}	
		//打开新窗口播放媒体
		function mediaPlay(url){
			//var url = baseUrl + "upload/" + fileName;
			window.open(url);
		}		
		$(document).ready(function() { 
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			setMenu();
			$('#exitBtn').on('click', function(e) {
			    e.preventDefault();
				exit();
			});
			getDetails();
			<%@ include file="../../static/myInfo.js"%>
		});			
		// 用户登出
        <%@ include file="../../static/logout.jsp"%>	
	</script>
</body>

</html>