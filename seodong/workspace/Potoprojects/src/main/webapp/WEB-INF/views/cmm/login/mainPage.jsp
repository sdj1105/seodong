<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>메인 페이지</title>
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
<script>

<!-- 회원가입페이지-->
function addAction() {
	alert("감사합니다. 회원가입 고고씽 ~~!!");
	location.replace("/singup.do");
}

function doAction() {
	alert("로그인 확인중 .....");
}

</script>


<style type="text/css">

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
</style>
  <body>

	<!--  사용안함  s -->
     <section id="content" class="m-t-lg wrapper-md animated fadeInUp" style=display:none>

	  		<div style="text-align: right; margin: 15px;">환영합니다**)
			   <div >
	           <a href="/login.do"  class="btn btn-info" style="  background-color: #fb6b5b; border-color: #fb6b5b;" >Login</a>
	          </div>
            </div>

	<!-- form  시작 -->
	<form name="dataform" method="post">
		<br>
		 <p class= "title_css"><font style="font-size: 60px;" color="pink">청.춘.스.럽.게</font><br>
		 <font style="font-size: 10px;" color="#A6A6A6"><br>로그인프로젝트 by김자경</font></p>
    </form>

    </section>
	<!--  사용안함  e -->

	<!--  메인페이지 s -->
	<div id="wrapper">
		<div id="sheader">
			헤더
		</div>
		<div id="sContents">
			컨텐츠
		</div>
		<div id="sfooter">
			풋터
		</div>
	</div>
	<!--  메인페이지 e -->


    <!-- form  끝 -->
  </body>

</html>
