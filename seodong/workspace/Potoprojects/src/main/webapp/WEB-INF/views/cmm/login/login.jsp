<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>

<head>
	<meta charset="UTF-8">
	<title>로그인 페이지</title>
</head>
     <!-- css -->
		<link rel="stylesheet" type="text/css" href="/css/bootstrap/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="/css/bootstrap/animate.css" />
		<link rel="stylesheet" type="text/css" href="/css/bootstrap/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="/css/bootstrap/font.css" />
		<link rel="stylesheet" type="text/css" href="/css/bootstrap/fuelux.css" />
		<link rel="stylesheet" type="text/css" href="/css/bootstrap/datatables.css" />
		<link rel="stylesheet" type="text/css" href="/css/bootstrap/plugin.css" />
        <link rel="stylesheet" type="text/css" href="/css/bootstrap/app.css" />
      <!-- 자바스크립트 -->
        <script src="/js/jquery.min.js"></script>
        <script src="/js/jquery-ui.js"></script>
        <script src="/js/bootstrap/bootstrap.js"></script>
        <script src="/js/bootstrap/bootstrap.js"></script>
        <script src="/js/bootstrap/app.js"></script>
        <script src="/js/bootstrap/app.plugin.js"></script>
        <script src="/js/bootstrap/app.data.js"></script>
        <script src="/js/bootstrap/fuelux.js"></script>
        <script src="/js/bootstrap/underscore-min.js"></script>
        <script src="/js/bootstrap/jquery.dataTables.min.js"></script>
        <script src="/js/bootstrap/jquery.sparkline.min.js"></script>
        <script src="/js/bootstrap/jquery.easy-pie-chart.js"></script>
        <script src="/js/bootstrap/bootstrap.file-input.js"></script>

<script>

<!-- 로그인 -->
function doAction() {
	alert("로그인 확인중 .....");
}

function loginCheck() {
	var obj = document.loginfrm;
	obj.method = "POST";
	obj.action = "/loginCheck.do";
	obj.submit();
}

</script>

<style>

.title_css{
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

 .title_css1{
	  color: #fff !important;
	  background-color: #fb6b5b;
	  border-color: #fb6b5b;
	  width: 120px;
	  margin-top: 100px;
	  margin-bottom: 5px;
 }
 .form-group, .m-t-xs {
 	padding : 10px;
 }
 a.btn-info, .checkbox {
 	margin : 10px;
 }


</style>

  <body>
   <section id="content" class="m-t-lg wrapper-md animated fadeInUp">

    <div style="text-align: right; margin: 15px;">환영합니다**)
		<div >
	      <a href="/mainPage.do"  class="btn btn-info" style="  background-color: #fb6b5b; border-color: #fb6b5b;">main</a>
	    </div>
    </div>

		    <br>

	<!-- form  시작 -->
	<form name="loginfrm" method="post" class="panel-body">

		 <p class= "title_css"><font style="font-size: 60px;" color="pink">청.춘.스.럽.게</font><br>
		 <font style="font-size: 10px;" color="#A6A6A6"><br>로그인프로젝트 by서동진</font></p>

	   <div class="row m-n">
	      <div class="col-md-4 col-md-offset-4 m-t-lg">

	        <section class="panel" style="border: 3px solid pink;">

	          <header class="panel-heading text-center">
	                   	 회원가입
	          </header>

	            <div class="form-group">
	              <label class="control-label">Id</label>
	              <input type="text" id="inputId" name="inputId" placeholder="test@example.com" class="form-control">
	            </div>
	            <div class="form-group">
	              <label class="control-label">Password</label>
	              <input type="password" id="firstPwd" name="firstPwd" placeholder="Password" class="form-control">
	            </div>
	            <div class="checkbox">
	              <label>
	                <input type="checkbox"> Keep me logged in
	              </label>
	            </div>
	            <a href="#" class="pull-right m-t-xs"><small>Forgot password?</small></a>
	            <a href="/singup.do" class="btn btn-info" style="background-color: #fb6b5b; border-color: #fb6b5b;">회원가입</a>
	            <!-- <button type="submit" class="btn btn-info" style="background-color: #fb6b5b; border-color: #fb6b5b;">Login in</button> -->
	            <button id="loginBtn" onclick="javascript:loginCheck();" class="btn btn-info" style="background-color: #fb6b5b; border-color: #fb6b5b;">로그인</button>

	        </section>
	      </div>
	    </div>
    </form>
    <!-- form  끝 -->
  </section>

  </body>
</html>