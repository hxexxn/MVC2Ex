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

	
<div id="menuBox">
	<a href="board/boardRegist.jsp" class="test btn btn-primary">글 등록</a>
	<a href="/MVC2Ex/index.jsp" class="test btn btn-primary">홈으로</a><br>
</div>

<div id="listBox">
 <table class="table">
      <tr class="firstBox">
        <th id="listNo"></th>
        <th id="listTitle">제목</th>
        <th id="listWriter">작성자</th>
        <th id="listDate">작성일</th>
      </tr>
	
	<c:forEach var="list" items="${list}">
      <tr class="secondBox">
        <td>${list.bNo}</td>
        <td><a href="boardContent?bNo=${list.bNo}">${list.bTitle}</a></td>
        <td>${list.bContent}</td>
        <td><fmt:formatDate value="${list.bRegDate}" pattern="MM-dd"/></td>
      </tr>
	</c:forEach>
	
  </table>
  </div>
  
</body>
</html>