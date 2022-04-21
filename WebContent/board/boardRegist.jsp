<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
<link rel="stylesheet" href="/MVC2Ex/css/mine.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<!-- 
	<form action="">
		글 제목 : <input type="text" name="bbsTitle" id="bbsTitle"><br>
		글 내용 : <input type="text" name="bbsContent" id="bbsContent"><br>
		작성자 : <input type="text" name="bbsWriter" id="bbsWriter"><br>
		<input class="btn btn-outline-danger" type="button" value="등록" id="bbsRegistBtn">
		<a class="btn btn-outline-primary" href="/MVC2Ex/index.jsp">홈으로</a>
	</form> -->
	
	<form action="/MVC2Ex/boardRegist" method="post" id="boardRegistForm">
	  <table class="table">
    <thead>
      <tr>
        <th id="tTitle">글 제목</th>
        <th><input type="text" name="bbsTitle" id="bbsTitle" autocomplete="off"></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>글 내용</td>
        <td><textarea name="bbsContent" id="bbsContent"></textarea></td>
        <!-- <td><input type="text" name="bbsContent" id="bbsContent" autocomplete="off"></td> -->
      </tr>
      <tr>
        <td>작성자</td>
        <td><input type="text" name="bbsWriter" id="bbsWriter" autocomplete="off"></td>
      </tr>
      <tr>
        <td><input class="btn btn-outline-danger" type="button" value="등록" id="bbsRegistBtn"></td>
        <td><a class="btn btn-outline-primary" href="/MVC2Ex/index.jsp">홈으로</a></td>
      </tr>


    </tbody>
  </table>

  </form>

<script type="text/javascript" src="/MVC2Ex/js/mine.js"></script>
</body>
</html>