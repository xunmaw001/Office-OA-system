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
							<h3 class="block-title">编辑设备申请</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item">设备申请管理</li>
								<li class="breadcrumb-item active">编辑设备申请</li>
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
								<h3 class="widget-title">设备申请信息</h3>
								<form id="addOrUpdateForm">
									<div class="form-row">
										<input id="updateId" name="id" type="hidden">
										<div class="form-group col-md-6">
											<label>设备编号</label>
											<input id="shebeibianhao" name="shebeibianhao" class="form-control" placeholder="设备编号">
										</div>
										<div class="form-group col-md-6">
											<label>申请标题</label>
											<input id="shenqingbiaoti" name="shenqingbiaoti" class="form-control" placeholder="申请标题">
										</div>
										<div class="form-group col-md-6">
											<label>设备名称</label>
											<input id="shebeimingcheng" name="shebeimingcheng" class="form-control" placeholder="设备名称">
										</div>
										<div class="form-group col-md-6">
											<label>数量</label>
											<input id="shuliang" name="shuliang" class="form-control" placeholder="数量">
										</div>
										<div class="form-group col-md-6">
											<label>申请数量</label>
											<input id="shenqingshuliang" name="shenqingshuliang" class="form-control" placeholder="申请数量">
										</div>
										<div class="form-group col-md-6">
											<label>申请内容</label>
											<textarea name="shenqingneirong" class="form-control" id="shenqingneirong" rows="3"></textarea>
										</div>
										<div class="form-group col-md-6">
											<label>申请日期</label>
											<div id="shenqingriqiDate" class="input-append date form_datetime">
												<input id="shenqingriqi-input" name="shenqingriqi" size="15" type="text" readonly>
												<span class="add-on"><i class="icon-remove"></i></span>
												<span class="add-on"><i class="icon-calendar"></i></span>
											</div>
										</div>
										<div class="form-group col-md-6">
											<label>归还日期</label>
											<div id="guihairiqiDate" class="input-append date form_datetime">
												<input id="guihairiqi-input" name="guihairiqi" size="15" type="text" readonly>
												<span class="add-on"><i class="icon-remove"></i></span>
												<span class="add-on"><i class="icon-calendar"></i></span>
											</div>
										</div>
										<div class="form-group col-md-6">
											<label>备注</label>
											<input id="beizhu" name="beizhu" class="form-control" placeholder="备注">
										</div>
										<div class="form-group col-md-6">
											<label>申请附件</label>
											<input name="file" type="file" class="form-control-file" id="shenqingfujianupload">
											<label id="shenqingfujianFileName"></label>
											<input name="shenqingfujian" id="shenqingfujian-input" type="hidden">
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


			var tableName = "shebeishenqing";
			var pageType = "add-or-update";
			var updateId = "";
			var crossTableId = -1;
			var crossTableName = '';
			var ruleForm = {};
			var crossRuleForm = {};



			var ruleForm = {};
			var vm = new Vue({
				el: '#addOrUpdateForm',
				data: {
					ruleForm: {},
				},
				beforeCreate: function() {
					var id = window.sessionStorage.getItem("id");
					if (id != null && id != "" && id != "null") {
						$.ajax({
							type: "GET",
							url: baseUrl + "shebeishenqing/info/" + id,
							beforeSend: function(xhr) {
								xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
							},
							success: function(res) {
								if (res.code == 0) {
									vm.ruleForm = res.data;
								} else if (res.code == 401) {
									<%@ include file="../../static/toLogin.jsp"%>
								} else {
									alert(res.msg)
								}
							},
						});
					}
				},
				methods: {}
			});

			// 文件上传
			function upload() {
				$('#shenqingfujianupload').fileupload({
					url: baseUrl + 'file/upload',
					headers: {
						token: window.sessionStorage.getItem("token")
					},
					dataType: 'json',
					done: function(e, data) {
						document.getElementById('shenqingfujian-input').setAttribute('value', baseUrl + 'file/download?fileName=' +
							data.result.file);
						if (document.getElementById('shenqingfujianFileName') != null) {
							document.getElementById('shenqingfujianFileName').innerHTML = "上传成功!";
						}
						$("#shenqingfujianImg").attr("src", data.result.file);
					}
				});
			}

			// 表单提交
			function submit() {
				if (validform() == true && compare() == true) {
					let data = {};
					getContent();
					let value = $('#addOrUpdateForm').serializeArray();
					$.each(value, function(index, item) {
						data[item.name] = item.value;
					});
					let json = JSON.stringify(data);
					var urlParam;
					var successMes = '';
					if (updateId != null && updateId != "null" && updateId != '') {
						urlParam = 'update';
						successMes = '修改成功';
					} else {
						urlParam = 'save';
						successMes = '添加成功';
					}
					httpJson("shebeishenqing/" + urlParam, "POST", data, (res) => {
						if (res.code == 0) {
							window.sessionStorage.removeItem('id');
							let flag = true;
							if (flag) {
								alert(successMes);
							}
							if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
								window.sessionStorage.removeItem('onlyme');
								window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
							} else {
								window.location.href = "list.jsp";
							}

						}
					});
				} else {
					alert("表单未填完整或有错误");
				}
			}

			// 填充富文本框
			function setContent() {}

			// 获取富文本框内容
			function getContent() {}

			// 表单校验
			function validform() {
				return $("#addOrUpdateForm").validate({
					rules: {
						shenqingbiaoti: {},
						shebeimingcheng: {},
						shuliang: {
							digits: true,
						},
						shenqingshuliang: {
							required: true,
						},
						shenqingneirong: {},
						shenqingriqi: {},
						guihairiqi: {},
						beizhu: {},
						shenqingfujian: {},
						yuangonggonghao: {},
						yuangongxingming: {},
						bumen: {},
						zhiwei: {},
						sfsh: {},
						shhf: {},
					},
					messages: {
						shenqingbiaoti: {},
						shebeimingcheng: {},
						shuliang: {
							digits: "请输入整数",
						},
						shenqingshuliang: {
							required: "申请数量不能为空",
						},
						shenqingneirong: {},
						shenqingriqi: {},
						guihairiqi: {},
						beizhu: {},
						shenqingfujian: {},
						yuangonggonghao: {},
						yuangongxingming: {},
						bumen: {},
						zhiwei: {},
						sfsh: {},
						shhf: {},
					}
				}).form();
			}
			// 添加表单校验方法
			function addValidation() {
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
				if (id != null && id != "" && id != "null") {
					updateId = id;
					window.sessionStorage.removeItem('id');
					http("shebeishenqing/info/" + id, "GET", {}, (res) => {
						if (res.code == 0) {
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
				} else {

					fill()
					//注册表单验证
					$(validform());
				}
			}
			// 下拉框选项回显
			function setSelectOption() {}
			// 关联下拉框改变
			function lvSelectChange(level) {
				let data = {};
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function(index, item) {
					data[item.name] = item.value;
				});

			}
			// 清除可能会重复渲染的selection
			function clear(className) {
				var elements = document.getElementsByClassName(className);
				for (var i = elements.length - 1; i >= 0; i--) {
					elements[i].parentNode.removeChild(elements[i]);
				}
			}

			function dateTimePick() {
				$.fn.datetimepicker.dates['zh-CN'] = {
					days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
					daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
					daysMin: ["日", "一", "二", "三", "四", "五", "六", "日"],
					months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
					monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
					today: "今天",
					suffix: [],
					meridiem: ["上午", "下午"]
				};
				$("#shenqingriqiDate").datetimepicker({
					minView: "month",
					autoclose: true,
					format: 'yyyy-mm-dd',
					language: 'zh-CN',
				});
				$("#guihairiqiDate").datetimepicker({
					minView: "month",
					autoclose: true,
					format: 'yyyy-mm-dd',
					language: 'zh-CN',
				});

			}

			function calculation() {
				//积
				var x = 0;
				//和
				var y = 0;
				var flag = 0;
			}

			function calculationSE(colName) {
				//单列求和接口
				http("shebeishenqing" + colName, "GET", {
					tableName: "shebeishenqing",
					columnName: colName
				}, (res) => {
					if (res.code == 0) {
						$("#" + colName).attr("value", res.data);
					}
				});
			}

			function calculationPre() {
				//进入该页面就填充"单列求和"的列
			}


			//新增时填充字段
			function fill() {

				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName + '/session', 'GET', {}, (res) => {
					if (res.code == 0) {
						var myId = res.data.id;
						if (res.data != null && res.data.yuangonggonghao != null && res.data.yuangonggonghao != '') {
							$('#yuangonggonghao').val(res.data.yuangonggonghao)
						}
						if (res.data != null && res.data.yuangongxingming != null && res.data.yuangongxingming != '') {
							$('#yuangongxingming').val(res.data.yuangongxingming)
						}
						if (res.data != null && res.data.bumen != null && res.data.bumen != '') {
							$('#bumen').val(res.data.bumen)
						}
						if (res.data != null && res.data.zhiwei != null && res.data.zhiwei != '') {
							$('#zhiwei').val(res.data.zhiwei)
						}
						$(validform());
					}
				});

			}

			function dataBind() {
				$("#updateId").val(ruleForm.id);
				$("#shebeibianhao").val(ruleForm.shebeibianhao);
				$("#shenqingbiaoti").val(ruleForm.shenqingbiaoti);
				$("#shebeimingcheng").val(ruleForm.shebeimingcheng);
				$("#shuliang").val(ruleForm.shuliang);
				$("#shenqingshuliang").val(ruleForm.shenqingshuliang);
				$("#shenqingneirong").val(ruleForm.shenqingneirong);
				$("#shenqingriqi-input").val(ruleForm.shenqingriqi);
				$("#guihairiqi-input").val(ruleForm.guihairiqi);
				$("#beizhu").val(ruleForm.beizhu);
				$("#shenqingfujian-input").val(ruleForm.shenqingfujian);
				$("#shenqingfujianFileName").html(ruleForm.shenqingfujian);
				$("#yuangonggonghao").val(ruleForm.yuangonggonghao);
				$("#yuangongxingming").val(ruleForm.yuangongxingming);
				$("#bumen").val(ruleForm.bumen);
				$("#zhiwei").val(ruleForm.zhiwei);

				$("#shhf").val(ruleForm.shhf);
			}
			//图片显示
			function showImg() {}
			//跨表

			//跨表
			function crossTable() {
				crossTableName = window.sessionStorage.getItem('crossTableName');
				crossTableId = window.sessionStorage.getItem('crossTableId');
				if (crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId !=
					-1) {
					http(crossTableName + "/info/" + crossTableId, "GET", {}, (res) => {
						if (res.code == 0) {
							crossRuleForm = res.data;
							$('#updateId').val(crossTableId);
							if (res.data != null && res.data != '' && res.data.shebeibianhao != null && res.data.shebeibianhao != '') {

								$("#shebeibianhao").val(res.data.shebeibianhao);
							}
							if (res.data != null && res.data != '' && res.data.shenqingbiaoti != null && res.data.shenqingbiaoti != '') {

								$("#shenqingbiaoti").val(res.data.shenqingbiaoti);
							}
							if (res.data != null && res.data != '' && res.data.shebeimingcheng != null && res.data.shebeimingcheng != '') {

								$("#shebeimingcheng").val(res.data.shebeimingcheng);
							}
							if (res.data != null && res.data != '' && res.data.shuliang != null && res.data.shuliang != '') {

								$("#shuliang").val(res.data.shuliang);
							}
							if (res.data != null && res.data != '' && res.data.shenqingshuliang != null && res.data.shenqingshuliang != '') {

								$("#shenqingshuliang").val(res.data.shenqingshuliang);
							}
							if (res.data != null && res.data != '' && res.data.shenqingneirong != null && res.data.shenqingneirong != '') {

								$("#shenqingneirong").val(res.data.shenqingneirong);
							}
							if (res.data != null && res.data != '' && res.data.shenqingriqi != null && res.data.shenqingriqi != '') {

								$("#shenqingriqi-input").val(res.data.shenqingriqi);
								$('#shenqingriqiFileName').val(res.data.shenqingriqi)
							}
							if (res.data != null && res.data != '' && res.data.guihairiqi != null && res.data.guihairiqi != '') {

								$("#guihairiqi-input").val(res.data.guihairiqi);
								$('#guihairiqiFileName').val(res.data.guihairiqi)
							}
							if (res.data != null && res.data != '' && res.data.beizhu != null && res.data.beizhu != '') {

								$("#beizhu").val(res.data.beizhu);
							}
							if (res.data != null && res.data != '' && res.data.shenqingfujian != null && res.data.shenqingfujian != '') {

								$("#shenqingfujian-input").val(res.data.shenqingfujian);
								$('#shenqingfujianFileName').val(res.data.shenqingfujian)
							}
							if (res.data != null && res.data != '' && res.data.yuangonggonghao != null && res.data.yuangonggonghao != '') {

								$("#yuangonggonghao").val(res.data.yuangonggonghao);
							}
							if (res.data != null && res.data != '' && res.data.yuangongxingming != null && res.data.yuangongxingming != '') {

								$("#yuangongxingming").val(res.data.yuangongxingming);
							}
							if (res.data != null && res.data != '' && res.data.bumen != null && res.data.bumen != '') {

								$("#bumen").val(res.data.bumen);
							}
							if (res.data != null && res.data != '' && res.data.zhiwei != null && res.data.zhiwei != '') {

								$("#zhiwei").val(res.data.zhiwei);
							}
							if (res.data != null && res.data != '' && res.data.sfsh != null && res.data.sfsh != '') {


							}
							if (res.data != null && res.data != '' && res.data.shhf != null && res.data.shhf != '') {

								$("#shhf").val(res.data.shhf);
							}
						}
					});
				}
				window.sessionStorage.removeItem('crossTableName');
				window.sessionStorage.removeItem('crossTableId');
			}

			//跨表更新字段
			function crossTableUpdate() {
				let flag = crossTableUpdateValidation();
				if (flag) {
					httpJson(crossTableName + "/update", "POST", {
						id: crossTableId,
					}, (res) => {
						if (res.code == 0) {
							console.log('跨表更新成功');
							return true;
						}
					});
				}
				return false;
			}

			//跨表更新前验证
			function crossTableUpdateValidation() {
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

			function readonly() {
				if (window.sessionStorage.getItem('role') != '管理员') {
					$('#jifen').attr('readonly', 'readonly');
					$('#money').attr('readonly', 'readonly');
				}
			}

			//比较大小
			function compare() {
				var largerVal = null;
				var smallerVal = null;
				var largerVal = $('#shuliang').val();
				var largerName = '数量';
				var smallerVal = $('#shenqingshuliang').val();
				var smallerName = '申请数量';
				if (largerVal != null && smallerVal != null) {
					if (largerVal < smallerVal) {
						alert(smallerName + '不能大于' + largerName);
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
