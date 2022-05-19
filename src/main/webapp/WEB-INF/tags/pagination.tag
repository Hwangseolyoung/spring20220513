<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="path"%>



<nav aria-label="Page navigation example">
	<ul class="pagination justify-content-center">

		<%-- <c:if test="${pagination.prev >= 1 }"> --%>
			<li class="page-item">
				<a class="page-link"
					href="${appRoot }/board/list?page=${pagination.prev }">
					<span>&laquo;</span>
				</a>
			</li>
		<%-- </c:if> --%>
		<c:forEach begin="${pagination.left }" end="${pagination.right }" var="pagination">
				<a href="${appRoot }/board/list?page=${pagination }"
					class="page-link">${pagination }</a>
			<%-- li class="page-item ${page == paginatio.current ? 'active' : '' }">
			</li> --%>
		</c:forEach>
		<c:if test="${pagination.endPage < pagination.totalRecords }">
			<li class="page-item">
				<a class="page-link" href="${appRoot }/board/list?page=${pagination.next }">
					<span>&raquo;</span>
				</a>
			</li>
		</c:if>
	</ul>
</nav>
