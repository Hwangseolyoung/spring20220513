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
	<t:navBar path="list" />
	
	<c:forEach items="${boardList }" var="board">
	
		<div class="d-flex justify-content-center card border-success mb-3" style="max-width: 18rem;">
			<div class="card-header bg-transparent border-success">
			<a href = "${appRoot}/board/get/${board.id}" >${board.title }</a></div>
			<div class="card-body text-success">
				<h5 class="card-title">${board.inserted }, ${board.writer }</h5>
				<p class="card-text">${board.body}</p>
			</div>
			<div class="card-footer bg-transparent border-success" >${board.id }
				<div class="d-flex justify-content-end">
					<i class="fa-regular fa-heart"></i>
					<i class="fa-regular fa-thumbs-up"></i> ${board.hits }
				</div>
			</div>
		</div>
		
	</c:forEach>

</body>
</html>