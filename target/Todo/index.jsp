<html>
<head>
    <%@include file="bootstrap_jQuery.jsp"%>
</head>

<body style="overflow-x: hidden; background: #ffc107">

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

                  <form class="" style="padding: 8rem!important;" action="Login" method="get">
                      <div class="form-group input-group-lg">
                          <label for="exampleInputEmail1">Email address</label>
                          <input type="email" name="login_email" class="form-control mt-1" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                      </div>
                      <br>
                      <div class="form-group input-group-lg">
                          <label for="exampleInputPassword1">Password</label>
                          <input type="password" name="login_password" class="form-control mt-1" id="exampleInputPassword1" placeholder="Password">
                      </div>
                      <div class="form-check">
                          <br>
                          <input type="checkbox" class="form-check-input" id="exampleCheck1">
                          <label class="form-check-label " for="exampleCheck1">Remember me</label>
                          <br>
                          <label class="form-check-label text-primary" for="exampleCheck1">Forget Password?</label>


                      </div>
                      <a href="home.jsp" class="btn btn-warning mt-2 mr-3">Login</a>
                      <a  class="btn btn-outline-primary mt-2 ml-3" href="Registration.jsp">Sign up</a>
                  </form>

              </div>

          </div>

      </div>

    </div>

            <div class="row">

                <div class="col-md-12 pt-3 " style="background: #3d4d63;width: 100%;height: 10%">
                    <p class="text-light font-weight-light">Copyright 2022 All rights reserved</p>
                </div>

            </div>

    </div>

    </div>
</body>
</html>
