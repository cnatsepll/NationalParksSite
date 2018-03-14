<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />



<c:forEach var="park" items="${parks}">
	<style>
.background {
	background:
		url('/img/parks/'${park.parkImg}'.jpg')
		no-repeat center;
}
</style>
	<div class="parks background">
		<div class="parkInfo">
			<div class="parkName">
				<strong><c:out value="${park.parkName}" /></strong>
			</div>

			<div class="location">
				<c:out value="${park.state}" />
			</div>

			<div class="description">
				<c:out value="${park.description}" />
			</div>
		</div>
	</div>

</c:forEach>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />