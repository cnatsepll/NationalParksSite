<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />
<section class="parkDetail">
	<div class="detail">
		<div class="detailImg">
			<c:url var="imageUrl" value="${park.parkImg}" />
			<img src="${imageUrl}">
		</div>
		<div class="detailInfo">
			<ul>
				<li><c:out value="${park.parkName}" /></li>
				<li><c:out value="${park.state}" /></li>
				<li><c:out value="${park.acreage}" /></li>
				<li><c:out value="${park.milesOfTrail}" /></li>
				<li><c:out value="$ ${park.entryFee}" /></li>
				<li><c:out value="${park.animalSpecies}" /></li>
				<li><c:out value="${park.description}" /></li>
			</ul>
		</div>

	</div>
</section>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />