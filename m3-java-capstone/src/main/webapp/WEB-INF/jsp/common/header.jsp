<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>National Parks Geek</title>
<c:url value="/css/stylesheet.css" var="styleHref" />
<link rel="stylesheet" href="${styleHref}">
</head>

<body>
	<header>
	<div class="row">
		<c:url value="/" var="homePageHref" />
		<c:url value="/img/logo.png" var="logoSrc" />
		<a href="${homePageHref}"> <img class="logo" src="${logoSrc}"
			alt="National Park Geek Logo" />
		</a>
		
		<h1>Explore the National Parks!</h1>
		</div>
	</header>
	<nav>

		<div class="centered">
			<c:url var="homeUrl" value="/homePage" />
			<a href="#">Home Page</a>
			<c:url var="surveyUrl" value="/survey" />
			<a href="#">Survey</a>
		</div>


	</nav>