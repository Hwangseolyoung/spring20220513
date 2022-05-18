<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
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
	<t:navBar path="list" />
	
		
	<div class="container"><h1 class="text-center">게시판 목록</h1></div>
	
	<div class="container d-flex flex-row-reverse">
			<form action="${appRoot }/board/search" method="get">
				<select name="searchBoard" id="">
					<option value="title">제목</option>
					<option value="writer">작성자</option>
				</select>
				
				<input type="text" name="searchKey" placeholder="검색어를 입력하세요">
				<button class="btn btn-outline-success" type="submit">
				<i class="fa-solid fa-magnifying-glass"></i>
				</button>
				
			</form>

	</div>


	<div class="container shadow-none p-3 mb-5 bg-light rounded">
		<table class="table table-hover caption-top">
			<caption>게시물을 선택해보세요</caption>
			<thead class="table-light text-center">
				<tr>
					<th scope="col">No</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">작성일</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody class="text-center">
				<c:forEach items="${boardList }" var="board">
					<tr>
						<th scope="row">${board.id}</th>
						<td>
							<a href="${appRoot}/board/get/${board.id}">${board.title }</a>
							<c:if test="${board.numOfReply > 0 }">
								(${board.numOfReply })
							</c:if>
						</td>
						<td>${board.writer }</td>
						<td>${board.inserted }</td>
						<td>${board.hits }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	<t:pagination path="list" />
	</div>



</body>
</html>