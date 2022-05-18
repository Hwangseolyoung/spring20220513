<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="path"%>
<div class="container shadow p-3 mb-5 bg-body rounded">
<ul class="nav justify-content-end align-items-center">
	<li class="nav-item">
		<a class="nav-link active text-dark" aria-current="page"
			href="${appRoot }/board/list">
			<i class="fa-solid fa-house-user"></i>
			HOME
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link text-success" href="${appRoot }/board/write">
			<i class="fa-solid fa-file-pen"></i>
			글 작성
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link text-dark" href="#">
			<i class="fa-brands fa-github-square"></i>
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link disabled text-dark">
			<i class="bi bi-github"></i>
		</a>
	</li>

	<!-- 
	<li class="nav-item">
		<a class="nav-link disabled">
			<i class="fa-solid fa-magnifying-glass"></i>
		</a>
	</li>
	
	<form class="d-flex" role="search">
		<input class="form-control me-2" type="search" placeholder="Search"
			aria-label="Search">
		<button class="btn btn-outline-success" type="submit">Search</button>
	</form>
	 -->
	
</ul>
</ul>
</div>