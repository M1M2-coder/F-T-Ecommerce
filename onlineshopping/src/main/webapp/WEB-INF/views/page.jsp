<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- Getting the Context Path -->
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!-- Loading the static resources -->
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<script type="text/javascript">
	window.menu = '${title}';
	console.log(menu);
</script>


<title>Online Shopping - ${title}</title>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.css" rel="stylesheet">

<!-- Bootstrap Readable THEME CSS -->
<link href="${css}/bootstrap-read-theme.min.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>
	<!-- Section One: NAVBAR -->
	<%@include file="./shared/navbar.jsp"%>

	<!--******************************** End Section One: NAVBAR ************************-->



	<!--  Section Two: HOME PAGE -->
	<c:if test="${userClickHome == true}">
		<%@include file="./home.jsp"%>
	</c:if>
	
	<!--******************************** End Section Two: HOME PAGE ********************-->


	<!--  Section Three: ABOUT US PAGE -->
	<c:if test="${userClickAbout == true}">
		<%@include file="./about.jsp"%>
	</c:if>
	
	<!--******************************** End Section Three: ABOUT US PAGE ********************-->


	<!--  Section Four: CONTACT US PAGE -->
	<c:if test="${userClickContact == true}">
		<%@include file="./contact.jsp"%>
	</c:if>
	
	<!--******************************** End Section Four: CONTACT US PAGE ********************-->

		

	<!-- Section: FOOTER -->
	<%@include file="./shared/footer.jsp"%>

	<!--******************************** End Section: FOOTER ***************************-->




	<!-- JavaScript -->
	<script src="${js}/jquery.js"></script>
	<script src="${js}/bootstrap.js"></script>
	<script src="${js}/myapp.js"></script>

</body>

</html>
