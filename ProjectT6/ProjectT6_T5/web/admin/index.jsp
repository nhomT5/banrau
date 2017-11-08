<%-- 
    Document   : index
    Created on : Nov 8, 2017, 5:15:53 PM
    Author     : erago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/bootstrap.css" rel='stylesheet' type='text/css' />
        <script src="${root}/js/jquery-1.11.1.min.js"></script>

    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

            <jsp:include page="content.jsp"></jsp:include>

            <jsp:include page="footer.jsp"></jsp:include> 

        </div>

    </body>
</html>
