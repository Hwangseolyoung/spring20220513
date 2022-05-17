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
	
	<div class="border-success border-3 opacity-75">
  <hr>
</div>

	<div class="container">
	<h1>${board.id }번게시물</h1>

	<form action="${appRoot }/board/modify" method="post">
		<input type="hidden" name="id" value="${board.id }" />

		<div class="d-flex justify-content-center mb-3">
		<label for="input1" class="form-label">제목</label>
			<input type="text" class="form-control" name="title"
				value="${board.title }" />
		</div>

		<br />

		<div class="d-flex justify-content-center mb-3">
			<label for="textarea1" class="form-label">본문</label>
			<textarea class="form-control" name="body">${board.body }</textarea>
		</div>

		<br />

		<div class="d-flex justify-content-end">
			<label for="input2" class="form-label">작성일</label>
			<input type="datetime-local" value="${board.inserted }" readonly />
		</div>

		<br />

		<button id="modify-submit1" class="btn btn-success">수정</button>
	</form>

	<form action="${appRoot }/board/remove" method="post">
		<input type="hidden" name="id" value="${board.id }" />
		<button id="remove-submit1" class="btn btn-success">삭제</button>
	</form>

	<hr />

	<%-- 댓글 추가 form --%>
	<!-- .container.mt-3>.row>.col>form -->
	<div class="container mt-3">
		<div class="row">
			<div class="col">
				<form action="${appRoot }/board/reply/insert" method="post">
					<div class="input-group">
						<input type="hidden" name="boardId" value="${board.id }" />
						<input class="form-control" type="text" name="content"
							required />
						<button class="btn btn-outline-secondary">
							<i class="fa-solid fa-comment-dots"></i>
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<c:forEach items="${replyList }" var="reply">
		<div class="d-flex justify-content-center mb-3">
			${reply.inserted } :

			<input type="text" class="form-control" name="content" id="input1"
				value="${reply.content }" />
		</div>
	</c:forEach>

	<!-- reply 삭제 form -->
	<div class="d-none">
		<form id="replyDeleteForm1" action="${appRoot }/board/reply/remove"
			method="post">
			<input id="replyDeleteInput1" type="text" name="id" />
			<input type="text" name="boardId" value="${board.id }" />
		</form>

	</div>
</div>
</body>
</html>