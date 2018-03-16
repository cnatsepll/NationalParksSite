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
				<li><c:out value="${park.elevationFt}" /></li>
				<li><c:out value="${park.numCampsites}" /></li>
				<li><c:out value="${park.climate}" /></li>
				<li><c:out value="${park.yearFounded}" /></li>
				<li><c:out value="${park.inspirQuote}" /></li>
				<li><c:out value="${park.inspirQuoteSource}" /></li>
				<li><c:out value="${park.annualVisCount}" /></li>
				<li><c:out value="${park.description}" /></li>
			</ul>
		</div>
	</div>

	<div>
		<c:url var="formWeather" value="/parkDetail" />
		<form method="GET" action="${formWeather}">
			<INPUT type="radio"/>Celcius 
			<input type="radio"/>Farenhiet 
			<input type="hidden" name="parkCode" value="${park.parkCode}"/>
				<INPUT TYPE="submit" VALUE="convert temperature" />
		</form>
	</div>


	<div class="weather">
		<c:forEach var="day" items="${weather}">
			<div class="forecastDay">
				<c:out value="${day.fivedayforecastvalue}" />
				<c:out value="${day.forecast}" />
				<c:url var="weatherUrl" value="/img/weather/${day.forecast}.png" />
				<img class="weatherImg" src="${weatherUrl}" />
				<c:out value="${day.low}" />
				<c:out value="${day.high}" />
			</div>
		</c:forEach>
	</div>
</section>

<c:import url="/WEB-INF/jsp/common/footer.jsp" />