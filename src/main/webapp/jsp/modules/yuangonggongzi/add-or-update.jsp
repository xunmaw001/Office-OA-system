<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

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
		.error{
			color:red;
		}
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
							<ul id="navUl" class="navbar-nav mr-auto">
							
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
							<h3 class="block-title">编辑员工工资</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item">员工工资管理</li>
								<li class="breadcrumb-item active">编辑员工工资</li>
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
							<h3 class="widget-title">员工工资信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
										<div class="form-group col-md-6">
										<label>工资单号</label>
										<input id="gongzidanhao" name="gongzidanhao" class="form-control" value="" readonly>
									</div>
											<div class="form-group col-md-6">
										<label>工资名称</label>
										<input id="gongzimingcheng" name="gongzimingcheng" class="form-control" placeholder="工资名称">
									</div>
											<div class="form-group col-md-6">
										<label>月份</label>
										<input id="yuefen" name="yuefen" class="form-control" placeholder="月份">
									</div>
											<div class="form-group col-md-6">
										<label>年份</label>
										<select id="nianfenSelect" name="nianfen" class="form-control">
																						<option value=" "></option>
																																					<option class="nianfenOption" value="2021">
														2021
													</option>
																										<option class="nianfenOption" value="2020">
														2020
													</option>
																										<option class="nianfenOption" value="2019">
														2019
													</option>
																										<option class="nianfenOption" value="2018">
														2018
													</option>
																																			</select>	
									</div>	
											<div class="form-group col-md-6">
										<label>员工工号</label>
										<input id="yuangonggonghao" name="yuangonggonghao" class="form-control" placeholder="员工工号">
									</div>
											<div class="form-group col-md-6">
										<label>员工姓名</label>
										<input id="yuangongxingming" name="yuangongxingming" class="form-control" placeholder="员工姓名">
									</div>
											<div class="form-group col-md-6">
										<label>部门</label>
										<input id="bumen" name="bumen" class="form-control" placeholder="部门">
									</div>
											<div class="form-group col-md-6">
										<label>职位</label>
										<input id="zhiwei" name="zhiwei" class="form-control" placeholder="职位">
									</div>
											<div class="form-group col-md-6">
										<label>底薪</label>
										<input id="dixin" name="dixin" class="form-control" onchange="calculation()">
									</div>
											<div class="form-group col-md-6">
										<label>绩效</label>
										<input id="jixiao" name="jixiao" class="form-control" onchange="calculation()">
									</div>
											<div class="form-group col-md-6">
										<label>补贴</label>
										<input id="butie" name="butie" class="form-control" onchange="calculation()">
									</div>
											<div class="form-group col-md-6">
										<label>奖励</label>
										<input id="jiangli" name="jiangli" class="form-control" onchange="calculation()">
									</div>
											<div class="form-group col-md-6">
										<label>加班工资</label>
										<input id="jiabangongzi" name="jiabangongzi" class="form-control" onchange="calculation()">
									</div>
											<div class="form-group col-md-6">
										<label>工龄工资</label>
										<input id="gonglinggongzi" name="gonglinggongzi" class="form-control" onchange="calculation()">
									</div>
											<div class="form-group col-md-6">
										<label>五险一金</label>
										<input id="wuxianyijin" name="wuxianyijin" class="form-control" onchange="calculation()">
									</div>	
											<div class="form-group col-md-6">
										<label>考勤扣款</label>
										<input id="kaoqinkoukuan" name="kaoqinkoukuan" class="form-control" onchange="calculation()">
									</div>	
											<div class="form-group col-md-6">
										<label>其他扣款</label>
										<input id="qitakoukuan" name="qitakoukuan" class="form-control" onchange="calculation()">
									</div>	
											<div class="form-group col-md-6">
										<label>实发工资</label>
										<input id="shifagongzi" name="shifagongzi" class="form-control" placeholder="实发工资">
									</div>
											<div class="form-group col-md-6">
										<label>备注</label>
										<input id="beizhu" name="beizhu" class="form-control" placeholder="备注">
									</div>
													
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																							<div class="form-group col-md-6 mb-3">
										<button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
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
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
		<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	


		var tableName = "yuangonggongzi";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};
																																																																																																	
					      				      				      				      				      				      				      				      				      				      				      				      				      				      				      				      				      				      				      	
								function gongzidanhaoUuid(){
				if($("#gongzidanhao").val() == null || $("#gongzidanhao").val() == "null" || $("#gongzidanhao").val() == ""){
					$("#gongzidanhao").attr("value",Math.round(new Date().getTime()/1000));
				}
			}				
																																																																																															
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
		                url: baseUrl + "yuangonggongzi/info/" + id,
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

		// 文件上传
		function upload(){
																																																																																																																																										}  

		// 表单提交
		function submit() {
			if(validform() ==true && compare() == true){
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				httpJson("yuangonggongzi/"+urlParam,"POST",data,(res)=>{
					if(res.code == 0){
						window.sessionStorage.removeItem('id');
						let flag = true;
																																																																																																																																																																																																																																																																			if(flag){
							alert(successMes);
						}
						if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
							window.sessionStorage.removeItem('onlyme');
							window.parent.location.href="${pageContext.request.contextPath}/index.jsp";
						}else{
							window.location.href="list.jsp";
						}
						
					}
				});
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
																																																																																																																							}  

		// 获取富文本框内容
		function getContent(){
																																																																																																																							}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
					           				       			 	           										    gongzimingcheng: {
														},
						       			 	           										    yuefen: {
														},
						       			 	           										    nianfen: {
															digits: true,
														},
						       			 	           										    yuangonggonghao: {
														},
						       			 	           										    yuangongxingming: {
														},
						       			 	           										    bumen: {
														},
						       			 	           										    zhiwei: {
														},
						       			 	           										    dixin: {
															required: true,
														},
						       			 	           										    jixiao: {
															required: true,
														},
						       			 	           										    butie: {
															required: true,
														},
						       			 	           										    jiangli: {
															required: true,
														},
						       			 	           										    jiabangongzi: {
															required: true,
														},
						       			 	           										    gonglinggongzi: {
															required: true,
														},
						       			 	           										    wuxianyijin: {
															required: true,
														},
						       			 	           										    kaoqinkoukuan: {
															required: true,
														},
						       			 	           										    qitakoukuan: {
															required: true,
														},
						       			 	           										    shifagongzi: {
															digits: true,
														},
						       			 	           										    beizhu: {
														},
						       			 					},
				messages: {
																													gongzimingcheng: {
														},
																								yuefen: {
														},
																								nianfen: {
															digits: "请输入整数",
														},
																								yuangonggonghao: {
														},
																								yuangongxingming: {
														},
																								bumen: {
														},
																								zhiwei: {
														},
																								dixin: {
															required: "底薪不能为空",
														},
																								jixiao: {
															required: "绩效不能为空",
														},
																								butie: {
															required: "补贴不能为空",
														},
																								jiangli: {
															required: "奖励不能为空",
														},
																								jiabangongzi: {
															required: "加班工资不能为空",
														},
																								gonglinggongzi: {
															required: "工龄工资不能为空",
														},
																								wuxianyijin: {
															required: "五险一金不能为空",
														},
																								kaoqinkoukuan: {
															required: "考勤扣款不能为空",
														},
																								qitakoukuan: {
															required: "其他扣款不能为空",
														},
																								shifagongzi: {
															digits: "请输入整数",
														},
																								beizhu: {
														},
															}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
			jQuery.validator.addMethod("isIdCardNo", function(value, element) {
				return this.optional(element) || idCardNoUtil.checkIdCardNo(value);
			}, "请正确输入您的身份证号码");
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("yuangonggongzi/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
																																																																																																																																																																																																																																																																									//注册表单验证
						$(validform());	
					}
				});
			}else{
															gongzidanhaoUuid();
																																																																																																																																																																											
							 		fill()
								//注册表单验证
		    	$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
																																																																																																																																										}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
																																																																																																																																											
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
																																																																																																																																								
		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;
																																																																																																																																																																																																																																								if($("#dixin").val() != null && $("#dixin").val() != ""){
								y = y + parseFloat($("#dixin").val());
							}
																								if($("#jixiao").val() != null && $("#jixiao").val() != ""){
								y = y + parseFloat($("#jixiao").val());
							}
																								if($("#butie").val() != null && $("#butie").val() != ""){
								y = y + parseFloat($("#butie").val());
							}
																								if($("#jiangli").val() != null && $("#jiangli").val() != ""){
								y = y + parseFloat($("#jiangli").val());
							}
																								if($("#jiabangongzi").val() != null && $("#jiabangongzi").val() != ""){
								y = y + parseFloat($("#jiabangongzi").val());
							}
																								if($("#gonglinggongzi").val() != null && $("#gonglinggongzi").val() != ""){
								y = y + parseFloat($("#gonglinggongzi").val());
							}
																								if($("#wuxianyijin").val() != null && $("#wuxianyijin").val() != ""){
								y = y - parseFloat($("#wuxianyijin").val());
							}
																								if($("#kaoqinkoukuan").val() != null && $("#kaoqinkoukuan").val() != ""){
								y = y - parseFloat($("#kaoqinkoukuan").val());
							}
																								if($("#qitakoukuan").val() != null && $("#qitakoukuan").val() != ""){
								y = y - parseFloat($("#qitakoukuan").val());
							}
																																						$("#shifagongzi").val(y);
																}		
		function calculationSE(colName){
			//单列求和接口
			http("yuangonggongzi"+colName,"GET",{
				tableName: "yuangonggongzi",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
																																																																																																																																										}			
		
		
			//新增时填充字段
			function fill(){

				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
																									$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
												$("#gongzidanhao").val(ruleForm.gongzidanhao);	
																$("#gongzimingcheng").val(ruleForm.gongzimingcheng);	
																$("#yuefen").val(ruleForm.yuefen);	
																var nianfenOptions = document.getElementsByClassName("nianfenOption");
					for(var nianfenCount = 0; nianfenCount < nianfenOptions.length;nianfenCount++){
						if(nianfenOptions[nianfenCount].getAttribute('value') == ruleForm.nianfen){
							nianfenOptions[nianfenCount].setAttribute('selected','selected');
						}
					}
																$("#yuangonggonghao").val(ruleForm.yuangonggonghao);	
																$("#yuangongxingming").val(ruleForm.yuangongxingming);	
																$("#bumen").val(ruleForm.bumen);	
																$("#zhiwei").val(ruleForm.zhiwei);	
																$("#dixin").val(ruleForm.dixin);	
																$("#jixiao").val(ruleForm.jixiao);	
																$("#butie").val(ruleForm.butie);	
																$("#jiangli").val(ruleForm.jiangli);	
																$("#jiabangongzi").val(ruleForm.jiabangongzi);	
																$("#gonglinggongzi").val(ruleForm.gonglinggongzi);	
																$("#wuxianyijin").val(ruleForm.wuxianyijin);	
																$("#kaoqinkoukuan").val(ruleForm.kaoqinkoukuan);	
																$("#qitakoukuan").val(ruleForm.qitakoukuan);	
																$("#shifagongzi").val(ruleForm.shifagongzi);	
																$("#beizhu").val(ruleForm.beizhu);	
									}		
		//图片显示
		function showImg(){
																																																																																																																																										}		
		//跨表

        //跨表
        function crossTable(){
            crossTableName = window.sessionStorage.getItem('crossTableName');
			crossTableId = window.sessionStorage.getItem('crossTableId');
            if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
				http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
					if(res.code == 0){
						crossRuleForm = res.data;
						$('#updateId').val(crossTableId);
												if(res.data != null && res.data != '' && res.data.gongzidanhao != null && res.data.gongzidanhao != ''){

															$("#gongzidanhao").val(res.data.gongzidanhao);
													}
												if(res.data != null && res.data != '' && res.data.gongzimingcheng != null && res.data.gongzimingcheng != ''){

															$("#gongzimingcheng").val(res.data.gongzimingcheng);
													}
												if(res.data != null && res.data != '' && res.data.yuefen != null && res.data.yuefen != ''){

															$("#yuefen").val(res.data.yuefen);
													}
												if(res.data != null && res.data != '' && res.data.nianfen != null && res.data.nianfen != ''){

															var nianfenOptions = document.getElementsByClassName("nianfenOption");
								for(var nianfenCount = 0; nianfenCount < nianfenOptions.length;nianfenCount++){
									if(nianfenOptions[nianfenCount].getAttribute('value') == res.data.nianfen){
										nianfenOptions[nianfenCount].setAttribute('selected','selected');
									}
								}
													}
												if(res.data != null && res.data != '' && res.data.yuangonggonghao != null && res.data.yuangonggonghao != ''){

															$("#yuangonggonghao").val(res.data.yuangonggonghao);
													}
												if(res.data != null && res.data != '' && res.data.yuangongxingming != null && res.data.yuangongxingming != ''){

															$("#yuangongxingming").val(res.data.yuangongxingming);
													}
												if(res.data != null && res.data != '' && res.data.bumen != null && res.data.bumen != ''){

															$("#bumen").val(res.data.bumen);
													}
												if(res.data != null && res.data != '' && res.data.zhiwei != null && res.data.zhiwei != ''){

															$("#zhiwei").val(res.data.zhiwei);
													}
												if(res.data != null && res.data != '' && res.data.dixin != null && res.data.dixin != ''){

															$("#dixin").val(res.data.dixin);
													}
												if(res.data != null && res.data != '' && res.data.jixiao != null && res.data.jixiao != ''){

															$("#jixiao").val(res.data.jixiao);
													}
												if(res.data != null && res.data != '' && res.data.butie != null && res.data.butie != ''){

															$("#butie").val(res.data.butie);
													}
												if(res.data != null && res.data != '' && res.data.jiangli != null && res.data.jiangli != ''){

															$("#jiangli").val(res.data.jiangli);
													}
												if(res.data != null && res.data != '' && res.data.jiabangongzi != null && res.data.jiabangongzi != ''){

															$("#jiabangongzi").val(res.data.jiabangongzi);
													}
												if(res.data != null && res.data != '' && res.data.gonglinggongzi != null && res.data.gonglinggongzi != ''){

															$("#gonglinggongzi").val(res.data.gonglinggongzi);
													}
												if(res.data != null && res.data != '' && res.data.wuxianyijin != null && res.data.wuxianyijin != ''){

															$("#wuxianyijin").val(res.data.wuxianyijin);
													}
												if(res.data != null && res.data != '' && res.data.kaoqinkoukuan != null && res.data.kaoqinkoukuan != ''){

															$("#kaoqinkoukuan").val(res.data.kaoqinkoukuan);
													}
												if(res.data != null && res.data != '' && res.data.qitakoukuan != null && res.data.qitakoukuan != ''){

															$("#qitakoukuan").val(res.data.qitakoukuan);
													}
												if(res.data != null && res.data != '' && res.data.shifagongzi != null && res.data.shifagongzi != ''){

															$("#shifagongzi").val(res.data.shifagongzi);
													}
												if(res.data != null && res.data != '' && res.data.beizhu != null && res.data.beizhu != ''){

															$("#beizhu").val(res.data.beizhu);
													}
											}
				});  
            }
            window.sessionStorage.removeItem('crossTableName');
			window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
																																																																																																																																																																																																																										},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
																																																																																																																																											return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			readonly();
					});		

		function readonly(){
			if(window.sessionStorage.getItem('role') != '管理员'){
				$('#jifen').attr('readonly','readonly');
				$('#money').attr('readonly','readonly');
			}
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
																																																																																																																								if(largerVal !=null && smallerVal != null){
				if(largerVal<=smallerVal){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>