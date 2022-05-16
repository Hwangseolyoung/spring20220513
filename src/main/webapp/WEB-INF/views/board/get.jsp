<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
<title>Insert title here</title>
</head>
<body>
	<t:navBar path="get" />
		<h1>${board.id }번 게시물</h1>
		
		<form action="${appRoot }/board/get/${board.id }" method="post">
		<input type="hidden" name="id" value="${board.id }" />
		
			<div class="d-flex justify-content-center mb-3">
				<!-- <label for="input1" class="form-label">제목</label> -->
				<input type="text" class="form-control" name="title" id="input1" required
					value="${board.title }" readonly />
			</div>
			
			<div class="d-flex justify-content-end">
				<label for="input2" class="form-label">작성일</label>
				<input type="datetime-local" class="form-control" name="title" id="input2" 
					value="${board.inserted }" />
			</div>
			
			<div class="d-flex justify-content-center mb-3">
				<label for="textarea1" class="form-label">본문</label>
				<textarea class="form-control" id="textarea1">${board.body }</textarea>
			</div>
			
			<div class="d-flex justify-content-end" >
				<button id="modify-submit1" class="btn btn-success">수정</button>
				<button id="modify-submit1" class="btn btn-success">삭제</button>
		</div>

		</form>


</body>
</html>