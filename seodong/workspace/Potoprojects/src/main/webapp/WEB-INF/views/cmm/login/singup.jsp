<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- c tag 라이브러리 -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %><!-- spring 라이브러리 -->
<spring:message code="messageVo.messageId" var="messageId" />
<jsp:useBean id="custumDate" class="java.util.Date" scope="request" />
<%
	String cashingVersion = new java.text.SimpleDateFormat("yyyyMMddHHmmss").format(custumDate);
%>
<html>
<meta property="og:type" content="website">
<meta property="og:title" content="Spring 기능모음 프로젝트">
<meta property="og:url" content="http://www.skysens.xyz">
<meta property="og:description" content="스터디 다시 모집중">
<meta property="og:image" content="./images/12345.jpg">
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<!-- css -->
<%-- <link rel="stylesheet" type="text/css" href="/css/bootstrap/bootstrap.css?vers=<%= cashingVersion%>" /> --%>
<link rel="stylesheet" type="text/css"
	href="/css/bootstrap/bootstrap.css?vers=<%=cashingVersion%>" />
<!-- <link rel="stylesheet" type="text/css" href="/css/bootstrap/animate.css" /> -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/bootstrap/animate.css' />?vers=<%=cashingVersion%>" />
<link rel="stylesheet" type="text/css"
	href="/css/bootstrap/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="/css/bootstrap/font.css" />
<link rel="stylesheet" type="text/css" href="/css/bootstrap/fuelux.css" />
<link rel="stylesheet" type="text/css"
	href="/css/bootstrap/datatables.css" />
<link rel="stylesheet" type="text/css" href="/css/bootstrap/plugin.css" />
<link rel="stylesheet" type="text/css" href="/css/bootstrap/app.css" />
<!-- 자바스크립트 -->
<script src="/js/jquery.min.js?vers=<%=cashingVersion%>"></script>
<script src="/js/jquery-ui.js?vers=<%=cashingVersion%>"></script>
<script src="/js/bootstrap/bootstrap.js?vers=<%=cashingVersion%>"></script>
<script src="/js/bootstrap/app.js?vers=<%=cashingVersion%>"></script>
<script src="/js/bootstrap/app.plugin.js?vers=<%=cashingVersion%>"></script>
<script src="/js/bootstrap/app.data.js?vers=<%=cashingVersion%>"></script>
<script src="/js/bootstrap/fuelux.js?vers=<%=cashingVersion%>"></script>
<script src="/js/bootstrap/underscore-min.js?vers=<%=cashingVersion%>"></script>
<script
	src="/js/bootstrap/jquery.dataTables.min.js?vers=<%=cashingVersion%>"></script>
<script
	src="/js/bootstrap/jquery.sparkline.min.js?vers=<%=cashingVersion%>"></script>
<script
	src="/js/bootstrap/jquery.easy-pie-chart.js?vers=<%=cashingVersion%>"></script>
<script
	src="/js/bootstrap/bootstrap.file-input.js?vers=<%=cashingVersion%>"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script src="<c:url value='/common/common.js' />" charset="utf-8"></script>

<script type="text/javascript">
<!-- 로그인 -->
	function doAction() {
		alert("로그인 확인중 .....");
	}

	/* 	$(document).ready(function name() {
	 alert(333);
	 }); */

	function checkedId(obj) { // 영문 숫자만 입력 가능
		var str = obj.value;
		var len = str.length;
		var ch = str.charAt(0);

		for (i = 0; i < len; i++) {
			if ((ch >= '0' && ch <= '9') || (ch >= 'a' && ch <= 'z')
					|| (ch >= 'A' && ch <= 'Z')) {
				continue;
			} else {
				alert("영문/숫자만 입력가능합니다");
				obj.value = "";
				obj.focus();
				return false;
			}
		}
		return true;
	}

	function checkedPhone(obj) {
		var str = obj.value;
		var len = str.length;
		var ch = str.charAt(0);

		for (i = 0; i < len; i++) {
			if ((ch >= '0' && ch <= '9')) {
				continue;
			} else {
				alert("숫자만 입력가능합니다");
				obj.value = "";
				obj.focus();
				return false;
			}
		}
		return true;
	}

	function onblur_event() {//alert(1);
		if (!$('#inputId').val()) { // 공백이면 false

			$("#createIdSpan").css("color", "red").css("font-size", "11px")
					.css("margin-top", "5px").css("margin-left", "5px").css(
							"float", "left").css("width", "235px");
			// .css는 체인방식 (key, value)로 입력
			document.getElementById("createIdSpan").innerHtml = "아이디를 입력하세요";
			// innerHtml은 ID값만을 사용할수 있음
			jQuery(".createIdSpan").html("아이디를 입력하세요").promise().done(
					function() {
						jQuery(".createIdSpan").slideDown('fast');
						$(this).effect("shake", {
							times : 15,
							distance : 1
						}, 400);
					});
		}
		if ($("#inputId").val() != "") {
			var idChecked = /^[0-9a-zA-Z]{5,15}$/; // 아이디 유효성검사(5자리 이상 15자리 이하)
			if (!idChecked.test($("#inputId").val())) {
				$("#createIdSpan").css("color", "red").css("font-size", "11px")
						.css("margin-top", "5px").css("margin-left", "5px")
						.css("float", "left").css("width", "235px");
				document.getElementById("createIdSpan").innerHTML = "아이디는 5자에서 15자 이하로 만들어주세요";

			}
		}

		// 사용할수 있는 아이디 입니다
		// 중복된 ID입니다 다른 ID를 입력해주세요.

		$.ajax({
			type : "POST",
			url : "/createIdCheck.do",
			data : "inputId=" + $('#inputId').val(),

			success : function(data) {
				alert(data);

				/*  				if (data == "ok") {

				 console.log("에이작스 결과 : " + data);
				 $(".createIdSpan").text("이미 사용중인 아이디 입니다.");

				 } else (data == "fail") {
				 $(".createIdSpan").text("사용가능합니다");
				 } */

			},

			error : function() {
				alert('통신실패!! 에러가 발생하였습니다');
			}

		});

	}

	function onblur_emailCheck() {
		if (!$('#inputEmail').val()) {
			$(".emailCheck")
					.append(
							'<span class="createEmailSpan" id="createEmailSpan"></span>');
			$("#createEmailSpan").css("color", "red").css("font-size", "11px")
					.css("margin-top", "5px").css("margin-left", "5px").css(
							"float", "left").css("width", "235px");
			document.getElementById("createEmailSpan").innerHTML = "email을 입력하세요.";
			return;
		}
		if ($("#inputEmail").val() != "") {
			var regExp = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/; // email 유효성검사
			if (!regExp.test($("#inputEmail").val())) {
				$(".emailCheck")
						.append(
								'<span class="createEmailSpan" id="createEmailSpan"></span>');
				$(".createEmailSpan").css("color", "red").css("font-size",
						"11px").css("margin-top", "5px").css("margin-left",
						"5px").css("float", "left").css("width", "235px");
				document.getElementById("createEmailSpan").innerHTML = "잘못된 email 형식입니다.";
				return;

			}
		}

		$.ajax({
			type : "POST",
			url : "/createEmailCheck.do",
			data : "inputEmail=" + $('#inputEmail').val(),

			success : function(data) {
				alert(data);
			},

			error : function() {
				alert('통신실패!! 에러가 발생하였습니다');
			}
		});

	}

	function onblur_IdAndEmailCheck() {
		$
				.ajax({
					type : "POST",
					url : "/createIdAndEmailCheck.do",
					data : "inputId=" + encodeURIComponent($('inputId').val())
							+ "inputEmail="
							+ encodeURIComponent($('inputEmail').val()),

					success : function(data) {
						alert(data);
					},

					error : function() {
						alert('통신실패!! 에러가 발생하였습니다');
					}
				});
	}

	function onblur_passwordCheck() {
		if ($("#firstPwd").val() != "" || $("#secondPwd").val() != "") {
			if ($("#firstPwd").val() != $("#secondPwd").val()) {
				$(".passwordCheck").append(
						'<span class="creatPwdSpan" id="creatPwdSpan"></span>');
				$(".createPwdSpan").css("color", "red")
						.css("font-size", "11px").css("margin-top", "5px").css(
								"margin-left", "5px").css("float", "left").css(
								"width", "235px");
				document.getElementById("createPwdSpan").innerHTML = "패스워드가 일치하지 않습니다";
			} else {
				$(".passwordCheck").append(
						'<span class="creatPwdSpan" id="creatPwdSpan"></span>');
				$(".createPwdSpan").css("color", "blue").css("font-size",
						"11px").css("margin-top", "5px").css("margin-left",
						"5px").css("float", "left").css("width", "235px");
				document.getElementById("createPwdSpan").innerHTML = "패스워드가 일치합니다";
			}
		}
	}

	function createSubmit() {
		//alert(1);
		/* 		var validate = validationCheck();
		 if(validate = false) return; */

		if (confirm("회원가입을 하겠습니까?") == true) {
			var obj = document.frm;
			obj.method = "post";
			obj.action = "<c:url value ='/userCreateSuccess.do' />";
			obj.submit();
		}
	}

	// 유효성검사 완성하기
	/* 	function validationCheck() {
	 var validate = true;
	 var regExp = ;
	 var hanChecked =;
	 var idChecked =;
	 var phoneChecked =;

	 if($("#userEmail").val()) {
	 if(!regExp.test($("#userEmail").val())){
	 alert("이메일 주소가 유효하지 않습니다");
	 $("#userEmail").focus();
	 return false;
	 }
	 }

	 return validate;

	 } */

	/* 재입력 구현 */
	$(document).ready(function name() {
		$('#resetBtn').click(function name() {
			/* alert(1); */
			//document.frm.reset();
			$('#inputId').val(''); // 여기있는 id를 공백으로 날린다
			$('#inputEmail').val('');
			$('#inputName').val('');

		});
	});
</script>

<style type="text/css">
.title_css {
	/*border: 5px solid pink;*/
	/* margin: 100px 100px 100px 280px;*/
	text-align: center;
	font-family: Serif;
	position: relative;
	min-height: 1px;
	padding-right: 15px;
	padding-left: 15px;
	padding-bottom: 15px;
	margin-bottom: 10 0px;
}

.title_css1 {
	color: #fff !important;
	background-color: #fb6b5b;
	border-color: #fb6b5b;
	width: 120px;
	margin-top: 100px;
	margin-bottom: 5px;
}

.input_box_css {
	display: inline;
	width: 30%;
	height: 34px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.428571429;
	color: #555555;
	vertical-align: middle;
	background-color: #ffffff;
	background-image: none;
	border: 1px solid #cccccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
	-webkit-transition: border-color ease-in-out 0.15s, box-shadow
		ease-in-out 0.15s;
	transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
}

.check_box_css {
	width: 50%;
	height: 34px;
}
</style>

</head>

<body>


	<section id="content" class="m-t-lg wrapper-md animated fadeInUp">

		<div style="text-align: right; margin: 15px;">환영합니다 ㅇㅇㅇ님~*)</div>
		<br>

		<!-- form  시작 -->
		<form name="frm" class="panel-body">

			<p class="title_css">
				<font style="font-size: 60px;" color="pink">S.I.N.G.I.N</font><br>
				<font style="font-size: 10px;" color="#A6A6A6"><br>로그인프로젝트
					by김자경</font>
			</p>

			<div class="row m-n">
				<div class="col-md-4 col-md-offset-4 m-t-lg">

					<section class="panel" style="border: 3px solid pink;">

						<div class="form-group">
							<label style="float: left;">아이디</label>
							<div class="createIdSpan" id="createIdSpan"></div>
							<input type="text" id="inputId" name="inputId"
								placeholder="${messageId}" class="form-control" maxlength="40"
								style="border: 0px 0px 2px 0px;" onkeyup="checkedId(this);"
								onblur="onblur_event();">

							<div style="font-size: 13px; color: red; padding-top: 5px;">&nbsp;&nbsp;*
								필수 정보입니다.</div>
						</div>

						<div class="form-group">
							<label style="float: left;" class="emailCheck">이메일</label> <input
								type="mail" id="inputEmail" name="inputEmail"
								placeholder="이메일주소" class="form-control"
								onblur="onblur_emailCheck();">
							<div style="font-size: 13px; color: red; padding-top: 5px;">&nbsp;&nbsp;*
								필수 정보입니다.</div>
						</div>

						<div class="form-group">
							<label style="float: left;">비밀번호</label>
							<div class="createPwdSpan" id="createPwdSpan"></div>
							<input type="password" id="firstPwd" name="firstPwd"
								maxlength="16" placeholder="패스워드" class="form-control">
							<div style="font-size: 13px; color: red; padding-top: 5px;">&nbsp;&nbsp;*
								필수 정보입니다.</div>
						</div>

						<div class="form-group">
							<label style="float: left;">비밀번호 재입력</label>
							<div class="createPwdSpan" id="createPwdSpan"></div>
							<input type="password" id="secondPwd" name="secondPwd"
								maxlength="16" placeholder="패스워드 재입력" class="form-control"
								onblur="onblur_passwordCheck()">
							<div style="font-size: 13px; color: red; padding-top: 5px;">&nbsp;&nbsp;*
								필수 정보입니다.</div>
						</div>

						<div class="form-group">
							<label style="float: left;">전화번호</label> <input type="text"
								id="phoneNumber" name="phoneNumber" maxlength="20"
								placeholder="전화번호" class="form-control"
								onblur="checkedPhone(this)">
							<div style="font-size: 13px; color: red; padding-top: 5px;">&nbsp;&nbsp;*
								필수 정보입니다.</div>
						</div>

					</section>
				</div>
			</div>

			<div class="row m-n">
				<div class="col-md-4 col-md-offset-4 m-t-lg">

					<section class="panel" style="border: 3px solid pink;">

						<div class="form-group">
							<input id="inputName" name="inputName" placeholder="이름"
								class="form-control" maxlength="50"
								style="border: 0px 0px 2px 0px; ime-mode: active;">
							<!--  한글로 입력을 받기 위해서 ime-mode 사용 -->
						</div>

						<div class="btn-group btn-group-justified">
							<a href="#" class="btn btn-primary">Left</a> <a href="#"
								class="btn btn-info">Middle</a> <a href="#"
								class="btn btn-success">Right</a>
						</div>

						<div class="form-group">

							<label class="btn btn-sm btn-info active"> <input
								type="radio" name="sex" id="sex" name="sex" vlaue="1"> <i
								class="fa fa-check text-active"></i>남자
							</label> <label class="btn btn-sm btn-success"> <input
								type="radio" name="sex" id="sex" name="sex" vlaue="2"> <i
								class="fa fa-check text-active"></i>여자
							</label>
						</div>

						<div class="form-group">
							<table>
								<tr>
									<td>&nbsp;생년월일&nbsp;&nbsp;&nbsp; <input type="text"
										name="year" size="4" maxlength="4"
										placeholder="&nbsp;&nbsp;년(4자)" class="input_box_css">

										<select name="month" calss="check_box_css">
											<option selected="selected" value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
									</select> &nbsp;월 <input name="day" size="2" type="text" maxlength="2"
										class="input_box_css">일



									</td>
								</tr>
							</table>
						</div>
						<input type="text" id="userZipCode" name="userZipCode"
							placeholder="우편번호"
							onclick="openDaumPostCode('userZipCode','userFirstAddr','userSecondAddr'); return fails;"><span
							style="font-size: 11px; font-weight: bold; color: #555555">(주소
							클릭 입력!)</span> <br> <input type="text" id="userFirstAddr"
							name="userFirstAddr" placeholder="주소"
							onclick="openDaumPostCode('userZipCode','userFirstAddr','userSecondAddr'); return fails;">
						<input type="text" id="userSecondAddr" name="userSecondAddr"
							placeholder="상세주소"> <br>

							 <input type="text" name=""
							id="" onkeypress="filterKey('[0-9a-zA-Z]', event)" style="display: none"/>
							<input
							type="text"
							onkeypress="return $.onkeyPressFilter('[0-9a-zA-Z]', event)" style="display: none">
						<div>
							<input type="text" name="" id=""
								onkeypress="return $.onKeyPressFilter('[0-9]', event);"  style="display: none"/>
						</div>


					</section>
				</div>
			</div>
			<div id="layer"
				style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
				<img
					src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
					id="btnCloseLayer"
					style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
					onclick="closeDaumPostcode()" alt="닫기 버튼">
			</div>


		</form>
		<!-- form  끝 -->

		<!-- 가입하기 버튼  s -->
		<button class="btn btn-info" type="button"
			style="align: center; background-color: #fb6b5b; border-color: #fb6b5b;"
			id="createBtn" onclick="javascript:createSubmit();">
			<!--
    	         	onclick="javascript:createSubmit();" ->(=) <script></script> 임
    	         -->
			가입하기
		</button>
		<!-- 가입하기 버튼  e -->
		<!-- 재입력  버튼  s -->

		<button class="btn btn-info" type="button"
			style="align: center; background-color: blue; border-color: #fb6b5b;"
			id="resetBtn" ><spring:message code="messageVo.messageReset" /></button>
		<!-- 재입력 버튼  e -->


	</section>

	<script type="text/javascript">
		var element_layer = document.getElementById('layer');

		function openDaumPostCode(userZipCode, userFirstAddr, userSecondAddr) {

			new daum.Postcode(
					{
						oncomplete : function(data) {
							document.getElementById(userZipCode).value = data.zonecode;
							document.getElementById(userFirstAddr).value = data.address;
							document.getElementById(userSecondAddr).focus();
							element_layer.style.display = 'none';
						},
						width : '100%',
						height : '100%'
					}).embed(element_layer);
			element_layer.style.display = 'block';
			initLayerPosition();

		}
		function initLayerPosition() {
			var width = 300; //우편번호서비스가 들어갈 element의 width
			var height = 460; //우편번호서비스가 들어갈 element의 height
			var borderWidth = 5; //샘플에서 사용하는 border의 두께

			// 위에서 선언한 값들을 실제 element에 넣는다.
			element_layer.style.width = width + 'px';
			element_layer.style.height = height + 'px';
			element_layer.style.border = borderWidth + 'px solid';
			// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
			element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
					+ 'px';
			element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
					+ 'px';

		}

		function closeDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_layer.style.display = 'none';
		}
	</script>
</body>
</html>