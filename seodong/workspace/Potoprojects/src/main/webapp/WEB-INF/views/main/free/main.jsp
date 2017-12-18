
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="custumDate" class="java.util.Date" scope="request" />

<html>
<head>
	<meta charset="utf-8">
	<title>회원가입페이지</title>
	<script  src="js/jquery.min.js"></script>
	<script  src="/js/jquery-ui.js"></script>
	<script  src="/js/bootstrap/app.data.js"></script>
	<script  src="/js/bootstrap/app.js"></script>
	<script  src="/js/bootstrap/app.plugin.js"></script>
	<script  src="/js/bootstrap/bootstrap.file-input.js"></script>
	<script  src="/js/bootstrap/bootstrap.js"></script>
	<script  src="/js/bootstrap/fuelux.js"></script>
	<script  src="/js/bootstrap/jquery.dataTables.min.js"></script>
	<script  src="/js/bootstrap/jquery.easy-pie-chart.js"></script>
	<script  src="/js/bootstrap/jquery.sparkline.min.js"></script>
	<script  src="/js/bootstrap/underscore-min.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

	<link rel="stylesheet" type="text/css" href="css/signup.css">
	<script src="<c:url value='/common/common.js' />" charset="utf-8"></script>
<script>

</script>
<style>
	.board {
		width: 100%;
		height: 80%;

	}
	.title {
		text-align: center;
	}
	table, th, td {
		border: 1px solid;
		margin: 0 auto;
	}
	th, td {
		text-align: center;
	}
</style>


<body>
	<div class="title">
		<h3>자유게시판</h3>
	</div>
	<div class="board">
		<table>
			<colgroup> <!-- 폭 지정할때 사용 -->
				<col width="10%">
				<col width="20%">
				<col width="30%">
				<col width="10%">
				<col width="10%">
				<col width="10%">
				<col width="10%">
			</colgroup>
			<thead>
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회</th>
					<th>추천수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="rowList" items="${boardList}">
					<tr>
						<td>${rowList.freeBorIdx}</td>
						<td>제목입니다</td>
						<td>내용입니다</td>
						<td>작성자</td>
						<td>2017.12.09</td>
						<td>20</td>
						<td>12</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>