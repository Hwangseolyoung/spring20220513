<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="path"%>

<ul class="nav justify-content-end">
	<li class="nav-item">
		<a class="nav-link active" aria-current="page" href="${appRoot }/board/list">
			<i class="fa-solid fa-house-user"></i> HOME
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="${appRoot }/board/write">
			<i class="fa-solid fa-file-pen"></i> 글 작성
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" href="#"><i class="fa-brands fa-github-square"></i></a>
	</li>
	<li class="nav-item">
		<a class="nav-link disabled">
			<i class="bi bi-github"></i>
		</a>
	</li>
	<li class="nav-item">
		<a class="nav-link disabled"><i class="fa-solid fa-magnifying-glass"></i></a>
	</li>
	<form class="d-flex" role="search">
		<input class="form-control me-2" type="search" placeholder="Search"
			aria-label="Search">
		<button class="btn btn-outline-success" type="submit">Search</button>
	</form>
</ul>
</ul>