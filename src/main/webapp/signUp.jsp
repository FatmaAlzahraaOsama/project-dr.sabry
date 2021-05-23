<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title> Login Form Design </title>
</head>

<body>
    <div>
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #bda2cb; height: 80px ;">
            <a class="navbar-brand m-4 " href="#"><img src="img1.jpg" style="width: 200px;height: 70px;"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown" style="margin-left:180px ;">
                <ul class="navbar-nav pl-2 text-right justify-content-start ">
                    <li class="nav-item active m-4 ">
                        <a class="nav-link" href="welcome page.html">Home</a>
                    </li>
                    <li class="nav-item pl-2 m-4">
                        <a class="nav-link" href="home.html">Features</a>
                    </li>
                    <li class="nav-item pl-2 m-4">
                        <a class="nav-link" href="features.html">Pricing</a>
                    </li>
                    <li class="nav-item pl-2 m-4">
                        <a class="nav-link" href="logIn.jsp">Login</a>
                    </li>
                    <li class="nav-item pl-2 m-4">
                        <a class="nav-link" href="signUp.jsp">Register</a>
                    </li>
                    <!-- <li class="nav-item dropdown pl-2 m-4">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Dropdown link
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="index.html">Home</a>
                            <a class="dropdown-item" href="home.html">Features</a>
                            <a class="dropdown-item" href="features.html">Pricing</a>
                            <a class="dropdown-item" href="login.html">Login</a>
                            <a class="dropdown-item" href="signin.html">Register</a>
                        </div>
                    </li> -->
                </ul>
            </div>

        </nav>
    </div>
    <div class="container">
        <div class="row mt-5 ">
            <div class="col-12 m-auto">
                <div style="text-align: center;margin-top: 100px;">
                    <h2 class="">Sign Up</h2>
                    <p class="">I have an account?<a href="logIn.jsp">Log in</a></p>
                </div>
                <%
String msg=request.getParameter("msg");
if("valid".equals(msg)){%>

<h1 style="color:red;text-align:center;">Successfully Updated </h1>

<%}%>
<%if("invalid".equals(msg)){%>

<h1 style="color:red;text-align:center;" >Some thing Went Wrong! Try Again !</h1>
<%} %>
                <div class="row">
                    <div class="col-3"></div>
                    <div class="col-6 margdinlogin">
                        <form class="needs-validation" novalidate action="secondPageAction.jsp">
                            <div class="form-group">
                                <label for="exampleInputFName">Name</label>
                                <input type="text" class="form-control" name="name" required>
                            </div>
                            <div class="form-group mt-3">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                                <div class="invalid-feedback">
                                    Please provide a valid Email.
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFName">Phone</label>
                                <input type="number" name="phone" class="form-control">
                            </div>
                            <div class="form-group mt-3">
                                <label for="my-input">Choose</label>
                                <select name="role" class="form-select" aria-label="Default select example">
                                <option value="customer">customer</option>
                                <option value="seller">seller</option>
                               
                              </select>
                            </div>
                            <div class="form-group ">
                                <label class="mt-3" for="exampleInputFName">password</label>
                                <input type="password" name="password" class="form-control mt-3">
                            </div>
                            <button type="submit" class="btn btn-success mt-4 btn-block">Submit</button>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</body>

</html>
