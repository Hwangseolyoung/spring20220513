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
	<t:navBar path="write" />
	
		<div class="border-success border-3 opacity-75">
  <hr>
</div>
	
	
	<div class="container">
	<form action="${appRoot }/board/write" method="post" >
	
		<div class="d-flex justify-content-center mb-3">
			<label for="input1" class="form-label">제목</label><br/>
			<input type="text" class="form-control" name="title" id="input1" />
		</div>
		
		<div class="d-flex justify-content-center mb-3">
			<label for="input2" class="form-label">작성자</label><hr/>
			<input type="text" class="form-control" name="writer" id="input2" />
		</div>
	
		<div class="d-flex justify-content-center mb-3">
			<label for="textarea1" class="form-label">본문</label><br/>
			<textarea class="form-control" name="body" placeholder="글 본문을 작성해보세요"></textarea>
		</div>
	
		<div class="d-flex justify-content-end">
			<button class="btn btn-success">등록</button>
		</div>

	</form>
	</div>
</body>
</html>