<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="path"%>

<div>
<nav aria-label="Page navigation example">
 <ul class="pagination justify-content-center">

		<li class="page-item">
			<a class="page-link" href="#" aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
			</a>
		</li>

		<c:forEach begin="${pageInfo.left }" end="${pageInfo.right }"
			var="pageNum">
			<c:url value="${path }" var="link">
				<c:param name="page" value="${pageNum }"></c:param>
			</c:url>
			<li class="page-item ${pageInfo.current == pageNum ? 'activ' : ''}">
				<a class="page-link" href="${link }">${pageNum }</a>
			</li>
			
			<li class="page-item">
				<a class="page-link" href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
				</a>
			</li>
		</c:forEach>
	</ul>
	</nav>
</div>