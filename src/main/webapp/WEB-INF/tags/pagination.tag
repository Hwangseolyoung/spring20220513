<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="path"%>

<nav aria-label="Page navigation example">
	<ul class="pagination justify-content-center">

		<c:if test="${pageInfo.prev >= 1 }">
			<li class="page-item">
				<a class="page-link"
					href="${appRoot }/boar/list/page${pageInfo.prev }">
					<span>&laquo;</span>
				</a>
			</li>
		</c:if>
		<c:forEach begin="${pageInfo.startPage }" end="${pageInfo.endPage }" var="pageNum">
			<li class="page-item ${pageNum == pageInfo.current ? 'active' : '' }">
				<a href="${appRoot }/boar/list/page${page }"
					class="page-link">${pageNum }</a>
			</li>
		</c:forEach>
		<c:if test="${pageInfo.endPage }">
			<li class="page-item">
				<a class="page-link" href="${appRoot }/boar/list/page${pageInfo.next }">
					<span>&raquo;</span>
				</a>
			</li>
		</c:if>
	</ul>
</nav>
