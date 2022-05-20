<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	referrerpolicy="no-referrer"></script>
<title>Insert title here</title>
</head>
<body>
	<t:navBar path="write" />
  
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="h3 pb-2 mb-3 text-dark border-center border-success text-center">
					새 글 작성</div>

			</div>
		</div>
		<div class="panel-body">

			<form role="form" action="${appRoot }/board/write" method="post">

				<div class="form-group shadow-none p-3 mb-5 bg-light rounded">
					<label class="h5 text-dark">제목</label>
					<input name="title" class="form-control border-success" />
				</div>

				<div class="form-group shadow-none p-3 mb-5 bg-light rounded">
					<label class="h5 text-dark">글 작성</label>
					<textarea name="body" rows="20" class="form-control border-success"
						placeholder="본문을 작성해보세요"></textarea>
				</div>

				<div class="form-group shadow-none p-3 mb-5 bg-light rounded">
					<label class="h5 text-dark">작성자</label>
					<input name="writer" class="form-control border-success" />
				</div>

				<div class="d-flex justify-content-end">
					<button class="btn btn-success">등록</button>
				</div>

			</form>
		</div>
	</div>
</body>
</html>