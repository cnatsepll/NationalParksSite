<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
<section class="survey">

	<c:if test="${not empty message}">
		<div>
			<c:out value="${message}" />
		</div>
	</c:if>
	
	<c:forEach var="results" items="${survey}">
	<img src="${results.parkImg}">;
	<ul>
	<li><c:out value="${results.voteCount}" /></li>
	<li><c:out value="${results.voteCount}" /></li>
	<li><c:out value="${results.voteCount}" /></li>
	<li><c:out value="${results.voteCount}" /></li>
	<li><c:out value="${results.voteCount}" /></li>
	</ul>
	
	
	</c:forEach>

</section>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />