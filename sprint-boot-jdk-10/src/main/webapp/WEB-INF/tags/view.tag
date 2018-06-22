<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ attribute name="title" required="false"%>
<%@ attribute name="styles" fragment="true" %>
<%@ attribute name="header" fragment="true" %>
<%@ attribute name="footer" fragment="true" %>
<%@ attribute name="scripts" fragment="true" %>

<fmt:setLocale value="pt-BR" scope="session" />

<c:if test="${empty title}">
    <c:set var="title" value="Blank Project"/>
</c:if>

<!doctype html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <title><c:out value="${title}"/></title>

    <%--<link rel="icon" type="image/x-icon" href="<c:url value="/assets/images/favicon.ico" />">--%>

    <jsp:invoke fragment="styles" />
</head>

<body>
<header>
    <%--<c:import url="/WEB-INF/tags/menu.jsp" />--%>
    <jsp:invoke fragment="header" />
</header>

<div>
    <jsp:doBody />
</div>

<footer>
    <jsp:invoke fragment="footer" />
</footer>

<jsp:invoke fragment="scripts" />
</body>
</html>