<%--
  Created by IntelliJ IDEA.
  User: adeeb
  Date: 5/11/2021
  Time: 5:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="bootstrap_jQuery.jsp"%>
    <title>Masters</title>
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
<div class="card-columns" style="margin:20px;">

    <div class="card">
        <img class="card-img-top" src="images/login/tailor.png" style="max-width: 150px" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Order <b> Details</b></h5>
            <table id="dt" class="table table-hover table-responsive">
                <thead>
                <tr align="center">
                    <th scope="col">ID</th>
                    <th scope="col">Customer</th>
                    <th scope="col">Received Date</th>
                    <th scope="col">Delivery Date</th>
                    <th scope="col">Phone#</th>
                    <th scope="col">Neck</th>
                    <th scope="col">West</th>
                    <th scope="col">Shirt Length</th>
                    <th scope="col">Shoulder width</th>
                    <th scope="col">Arm Length</th>
                    <th scope="col">Inseam</th>
                    <th scope="col">Wrist</th>
                    <th scope="col">Front Pocket</th>
                    <th scope="col">Side Pocket</th>
                    <th scope="col">Collor</th>
                    <th scope="col">Cloth Name</th>
                    <th scope="col">Action</th>





                </tr>
                </thead>
                <tbody>
                <tr align="center">
                    <th scope="row">1</th>
                    <td>Shahzeb Iqbal</td>
                    <td>11/5/2021</td>
                    <td>20/5/2021</td>
                    <td>03166276765</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>NO</td>
                    <td>YES</td>
                    <td>Sherwani</td>
                    <td>Boski</td>
                    <td width="200">
                        <form action="delivered" method="get">

                            <button  type="submit" class="border-0 rdy" style="background: none"><a style="margin-right: 20px; color: green" ><i class="fa fa-check" aria-hidden="true"> </i></a></button>
                            <a  style="margin-right: 20px" href="addcustomer.jsp"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                            <button name="" type="submit" class="border-0 rdy" style="background: none"><a  style="margin-right: 20px; color: red"type="submit"><i class="fa fa-trash" aria-hidden="true"></i></a></button>

                        </form>

                    </td>

                </tr>
                <tr align="center">
                    <th scope="row">1</th>
                    <td>Shahzeb Iqbal</td>
                    <td>11/5/2021</td>
                    <td>20/5/2021</td>
                    <td>03166276765</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>NO</td>
                    <td>YES</td>
                    <td>Sherwani</td>
                    <td>Boski</td>
                    <td width="200">
                        <form action="delivered" method="get">

                            <button  type="submit" class="border-0 rdy" style="background: none"><a style="margin-right: 20px; color: green" ><i class="fa fa-check" aria-hidden="true"> </i></a></button>
                            <a  style="margin-right: 20px" href="addcustomer.jsp"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                            <button name="" type="submit" class="border-0 rdy" style="background: none"><a  style="margin-right: 20px; color: red"type="submit"><i class="fa fa-trash" aria-hidden="true"></i></a></button>

                        </form>

                    </td>

                </tr>
                <tr align="center">
                    <th scope="row">1</th>
                    <td>Shahzeb Iqbal</td>
                    <td>11/5/2021</td>
                    <td>20/5/2021</td>
                    <td>03166276765</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>NO</td>
                    <td>YES</td>
                    <td>Sherwani</td>
                    <td>Boski</td>
                    <td width="200">
                        <form action="delivered" method="get">

                            <button  type="submit" class="border-0 rdy" style="background: none"><a style="margin-right: 20px; color: green" ><i class="fa fa-check" aria-hidden="true"> </i></a></button>
                            <a  style="margin-right: 20px" href="addcustomer.jsp"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                            <button name="" type="submit" class="border-0 rdy" style="background: none"><a  style="margin-right: 20px; color: red"type="submit"><i class="fa fa-trash" aria-hidden="true"></i></a></button>

                        </form>

                    </td>

                </tr>

                <tr align="center">
                    <th scope="row">7787</th>
                    <td>adeeb qambrani</td>
                    <td>11/5/2021</td>
                    <td>20/5/2021</td>
                    <td>03166276765</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>21</td>
                    <td>52</td>
                    <td>21</td>
                    <td>NO</td>
                    <td>YES</td>
                    <td>Sherwani</td>
                    <td>Boski</td>
                    <td width="200">
                        <form action="delivered" method="get">

                            <button  type="submit" class="border-0 rdy" style="background: none"><a style="margin-right: 20px; color: green" ><i class="fa fa-check" aria-hidden="true"> </i></a></button>
                            <a  style="margin-right: 20px" href="addcustomer.jsp"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                            <button name="" type="submit" class="border-0 rdy" style="background: none"><a  style="margin-right: 20px; color: red"type="submit"><i class="fa fa-trash" aria-hidden="true"></i></a></button>

                        </form>

                    </td>

                </tr>

                </tbody>
            </table>
            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>

        </div>
    </div>


</div>
</body>
</html>
