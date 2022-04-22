<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/MVC2Ex/css/login.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
		
		
	<form action="/MVC2Ex/userLogin" method="post" id="loginForm">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" id="uId" name="uId" autocomplete="off"></td>
			</tr>

			<tr>
				<td>비밀번호</td>
				<td><input type="password" id="uPw" name="uPw"></td>
			</tr>

			<tr>
				<td><input class="btn btn-dark" type="button" id="loginBtn" value="로그인">
				<td><button type="button" class="btn btn-light">홈으로</button></td>
			</tr>
		</table>
	</form>



<!-- 	<script type="text/javascript" src="/MVC2Ex/js/mine.js"></script> -->
</body>
</html>