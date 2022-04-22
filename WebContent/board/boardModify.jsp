<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/boardList.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

	<h1> 수정 페이지 </h1>
	
	<form action="boardModify" method="post" id="boardModiForm">
		<input type="hidden" value="${dto.bNo}" name="bNo" id="bNo">
	  <table class="table">
    <thead>    
      <tr>
        <th>제목</th>
        <th><input type="text" value="${dto.bTitle}" name="bTitle" id="bTitle"></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>내용</th>
        <td><input type="text" value="${dto.bContent}" name="bContent" id="bContent"></td>
      </tr>
      <tr>
        <th>작성자</th>
        <td>${dto.bWriter}</td>
      </tr>
      <tr>
        <th>작성일</th>
        <td><fmt:formatDate value="${dto.bRegDate}" pattern="MM-dd"/></td>
      </tr>
      <tr>
      <td><input type="button" class="test btn btn-primary" id="boardModiBtn" value="수정하기">
      <a href="boardList" class="test btn btn-primary">목록으로</a></td>
    </tbody>
  </table>
	</form>

	
	
<%-- 	<form action="boardModify" method="post" id="boardModiForm">
	<input type="hidden" value="${dto.bNo}" name="bNo" id="bNo">
	글 제목 : <input type="text" value="${dto.bTitle}" name="bTitle" id="bTitle"> <br>
	글 내용 : <input type="text" value="${dto.bContent}" name="bContent" id="bContent"> <br>
	글 작성자 : ${dto.bWriter} <br>
	글 작성일 : <fmt:formatDate value="${list.bRegDate}" pattern="MM-dd"/><br>
	
	<input type="button" class="test btn btn-primary" id="boardModiBtn" value="수정하기">
	
	</form>
	
	<a href="boardList" class="test btn btn-primary">목록으로</a><br> --%>

	
	
<script type="text/javascript" src="/MVC2Ex/js/mine.js"></script>
</body>
</html>