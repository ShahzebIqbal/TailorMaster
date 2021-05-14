<%--
  Created by IntelliJ IDEA.
  User: adeeb
  Date: 5/11/2021
  Time: 5:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="bootstrap_jQuery.jsp"%>
    <title>Sales</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light " style="background-color: #ffc107; color: ghostwhite">
    <a class="navbar-brand" href="home.jsp">Tailor Master</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="addcustomer.jsp">Add Customer</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="master.jsp">Masters</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="salereport.jsp">Sale Report</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="allcustomers.jsp">All Customers</a>
            </li>
        </ul>
        <a href="#profile.jsp" class="btn" style="color: #3d4d63"><i class="fa fa-user" style="color: #3d4d63"></i> Profile</a>
        <a href="#" class="btn" style="color: #3d4d63"><i class="fa fa-sign-out" style="color: #3d4d63"></i> Sign out</a>

    </div>
</nav>

</body>
</html>
