<%--
  Created by IntelliJ IDEA.
  User: adeeb
  Date: 5/11/2021
  Time: 2:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="bootstrap_jQuery.jsp"%>
    <title>Registration</title>
</head>
<body>

<%-- Password Matching Validation--%>
<script>


    function Validate(){

            var password = document.getElementById("regPassword").value;
            var confirmPassword = document.getElementById("regConfirmPassword").value;
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
    }
</script>
<%----------------------------------%>

<div class="row h-100" >
    <div class="card col-md-10 offset-1 my-auto">
        <div class="container" >

            <div class="row h-100">

                <div class="col-md-5 my-auto">

                    <div class="customizeCard mt-5" >

                        <img src="images/login/tailor.png" class="img-fluid" alt="image not found!">
                    </div>

                </div>
                <div class="col-md-1"></div>

                <div class="col-md-6 my-auto">

                    <div class="customizeCard2">

                        <form class="validatedForm" onsubmit="return Validate()" style="padding: 8rem!important;" action="register" method="post">
                            <div class="form-group">
                                <label for="regName">Name</label>
                                <input type="text" name="user_name" class="form-control mt-1" id="regName" aria-describedby="emailHelp" placeholder="Enter Name">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="regPhone">Phone</label>
                                <input type="text" pattern="[03][0-9]{10}"  name="user_phone" class="form-control mt-1" id="regPhone" aria-describedby="emailHelp" placeholder="03xxxxxxxxx">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="regEmail">Email address</label>
                                <input type="email" name="user_email" class="form-control mt-1" id="regEmail" aria-describedby="emailHelp" placeholder="Enter email">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="regPassword">Password</label>
                                <input type="password" name="user_password" class="form-control mt-1" id="regPassword" placeholder="Enter New Password">
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="regConfirmPassword">Confirm</label>
                                <input type="password" required name="user_confirm_password" class="form-control mt-1" id="regConfirmPassword" placeholder="Confirm New Password">
                            </div>
                            <button type="submit" id="click"  class="btn btn-warning mt-2 mr-3">Sign up</button>
                            <a type="submit" class="btn btn-outline-primary mt-2 ml-3" href="index.jsp">Login</a>
                        </form>

                    </div>

                </div>

            </div>

        </div>


    </div>

</div>


</body>
</html>
