<%--
  Created by IntelliJ IDEA.
  User: adeeb
  Date: 5/11/2021
  Time: 5:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Customer</title>
    <%@include file="bootstrap_jQuery.jsp"%>
</head>
<body style="overflow-x: hidden">

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

<div class="row pt-1">

    <div class="col-md-10 offset-1">
        <form name="add_customer_form" action="customer" method="post" >
            <div class="card-group rounded-3">
        <div class="card ">
            <div class="card-body">
                <h3 class="text-dark">General Information</h3>
                    <div class="form-group">
                        <label for="addname">Full Name</label>
                        <input type="text"  class="form-control" required name="c_name" id="addname" aria-describedby="emailHelp" placeholder="Enter Full Name">
                    </div>
                    <div class="form-group">
                        <label for="addphone">Phone</label>
                        <input type="text" pattern="[03][0-9]{10}" required name="c_phone" class="form-control" id="addphone" placeholder="Enter Phone">
                    </div>
                    <div class="form-group">
                        <label for="addpocketyes">Front Pocket</label>
                        <input id="addpocketyes" required type="radio" value="YES" aria-label="Radio button for following text input" name="c_f_pocket"> YES
                        <input id="addpocketno" required type="radio"  value="NO" aria-label="Radio button for following text input" name="c_f_pocket"> NO
                    </div>

                    <div class="form-group">
                        <label for="addsidepocketyes">Side Pocket</label> &nbsp;
                        <input id="addsidepocketyes" value="YES" type="radio" aria-label="Radio button for following text input" name="c_s_pocket"> YES
                        <input id="addsidepocketno" type="radio" value="NO" aria-label="Radio button for following text input" name="c_s_pocket"> NO
                    </div>

                    <div class="form-group">

                        <select class="custom-select" required id="addcollortype" name="c_collor_type">
                            <option selected>Collor Type</option>
                            <option value="Sherwani">Sherwani</option>
                            <option value="Simple">Simple</option>
                            <option value="None">None</option>
                        </select>

                    </div>     <div class="form-group">

                    <select class="custom-select" required id="addstatus" name="c_order_status">
                        <option selected>Order status</option>
                        <option value="Sherwani">Pending</option>
                        <option value="Simple">In-queue</option>
                        <option value="None">Ready</option>
                    </select>

                </div>

                    <div class="form-group">

                        <select class="custom-select" required id="addclothname" name="c_cloth_name">

                            <option selected>Cloth Name</option>
                            <option value="Grace">Grace</option>
                            <option value="Washing Wear">Washing Wear</option>
                            <option value="Cotton">Cotton</option>
                            <option value="Leelam">Leelam</option>
                            <option value="Boski">Boski</option>
                            <option value="Toyobo">Toyobo</option>

                        </select>

                    </div>

                    <div class="form-group">
                        <label for="addreceivedate">Receive Date</label>
                        <input class="custom-select" type="date" name="c_receive_date" id="addreceivedate" value="Receive Date" >
                    </div>

                    <div class="form-group">
                        <label for="adddeliverdate">Delivery Date</label>
                        <input class="custom-select" type="date" name="c_delivery_date" id="adddeliverdate" value="Receive Date" >
                    </div>

                    <div class="form-group">
                        <textarea class="custom-select" name="c_text_area" id="addother" cols="30" rows="10" placeholder="Other Requirments to mentioned here"></textarea>
                    </div>

<%--                    <button type="submit" class="btn btn-primary">Submit</button>--%>

            </div>
        </div>
        <div class="card" style="background: #ffc107">
            <div class="card-body">
                <h3 class="text-primary">Measurements</h3>
                <br>
                <div class="form-group col-md-6 offset-3">
                    <input type="number" class="form-control" name="c_neck"         placeholder="Enter neck measurement">
                    <br>
                    <input type="number" class="form-control" name="c_chest"        placeholder="Enter chest measurement">
                    <br>
                    <input type="number" class="form-control" name="c_waist"        placeholder="Enter waist measurement">
                    <br>
                    <input type="number" class="form-control" name="c_shirt"        placeholder="Enter shirt length measurement">
                    <br>
                    <input type="number" class="form-control" name="c_shoulder-half"     placeholder="Enter half shoulder measurement">
                    <br>
                    <input type="number" class="form-control" name="c_shoulder"     placeholder="Enter shoulder width measurement">
                    <br>
                    <input type="number" class="form-control" name="c_arm"          placeholder="Enter Arm length measurement">
                    <br>
                    <input type="number" class="form-control" name="c_inseam"       placeholder="Enter Inseam measurement">
                    <br>
                    <input type="number" class="form-control" name="c_wrist"        placeholder="Enter wrist measurement">
                    <br>
                    <input type="number" class="form-control" name="c_cuff"        placeholder="Enter wrist foot-cuff">
                    <br>
                    <button type="submit" class="btn btn-primary ml-2" style="width: 45%" >Add Customer</button>
                    <button type="reset" class="btn btn-dark" style="width: 45%">Clear</button>
                </div>
            </div>

            </div>

        </div>
        </form>
    </div>

</div>
</body>
</html>
