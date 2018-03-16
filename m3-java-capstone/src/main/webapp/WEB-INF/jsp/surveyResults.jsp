<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
<section class="survey">

	<c:if test="${not empty message}">
		<div>
			<c:out value="${message}" />
		</div>
	</c:if>
	
	<c:forEach var="results" items="${survey}">
	<c:url var="imageUrl" value="${results.parkImg}" />
	<img src="${imageUrl}">
	<ul>
	<li><c:out value="${results.voteCount} votes." /></li>
	<li><c:out value="${results.parkName}" /></li>
	<li><c:out value="${results.state}" /></li>
	<li><c:out value="${results.annualVisCount} visitors per year." /></li>
	<li><c:out value="${results.milesOfTrail} miles of trail." /></li>
	</ul>
	
	
	</c:forEach>

</section>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />