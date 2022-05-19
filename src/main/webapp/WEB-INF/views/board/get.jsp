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
	<t:navBar path="get" />

	<div class="container">

		<div class="row">
			<form id="boardModifyform1" action="${appRoot }/board/modify" method="post">
				<input type="hidden" name="id" value="${board.id }" />
				<div class="col-lg-12"></div>
				<div class="panel-body"></div>
				<label class="text-dark justify-content-end">글쓴이 :
					${board.writer } ${board.inserted }</label>

				<div class="form-group shadow-none p-3 mb-5 bg-light rounded">
					<input name="title" class="form-control border-success"
						value="${board.title }" />
				</div>

				<div class="form-group shadow-none p-3 mb-5 bg-light rounded">
					<textarea name="body" rows="20" class="form-control border-success"
						value="${board.body }">${board.body }</textarea>
				</div>
			</form>

			<form id="boardRemoveform2" action="${appRoot }/board/remove" method="post">
				<input type="hidden" name="id" value="${board.id }" />
			</form>
		</div>
		
		<div class="d-flex flex-row-reverse">
			<button form="boardRemoveform2" type="submit" id="remove-submit1"
				class="btn btn-danger " style="margin-left:10px">삭제</button>
			<button form="boardModifyform1" type="submit" id="modify-submit1"
				class="btn btn-success ">수정</button> 
		</div>

		<hr />

		<%-- 댓글 추가 form --%>
		<!-- .container.mt-3>.row>.col>form -->
		<div class="container mt-3">
			<div class="row">
				<div class="col">
					<form action="${appRoot }/board/reply/insert" method="post">
						<div class="input-group">
							<input type="hidden" name="boardId" value="${board.id }" />
							<input class="form-control" type="text" name="content" required 
								placeholder="댓글을 작성해보세요~"/>
							<button class="btn btn-outline-secondary">
								<i class="fa-solid fa-comment-dots"></i>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<br>
		

		<div class="justify-content-center mb-3">
			<c:forEach items="${replyList }" var="reply">
		
				${reply.inserted } :

				<!-- reply 수정 & 삭제 form -->
				<div id="replyButton">
					<form id="replyModifyform1" action="${appRoot }/board/reply/modify"
						method="post">
						<input type="hidden" name="id" value="${reply.id }" />
						<input type="hidden" name="boardId" value="${reply.boardId }" />
						${reply.content }"
					</form>

					<form id="replyDeleteForm1" action="${appRoot }/board/reply/remove"
						method="post">
						<input type="hidden" name="id" value="${reply.id }" />
						<input type="hidden" name="boardId" value="${board.id }" />
					</form>
					
					<div>
						<button form="replyModifyform1"  id="replyModify" style="margin-left:10px">수정</button>
						<button form="replyDeleteForm1" id="replyDelete">삭제</button>
					</div>
					
					<div class="text-success">
 						 <hr>
					</div>
				</div>

			</c:forEach>

		</div>

	</div>
</body>
</html>