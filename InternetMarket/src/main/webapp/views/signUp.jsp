<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Moldivate - Bootstrap Admin Template</title>

    <link href="/resources/css/style.default.css" rel="stylesheet">

</head>

<body class="signin">


<section>

    <div class="panel panel-signup">
        <div class="panel-body">
            <div class="logo text-center">
                <img src="/resources/images/logo-primary.png" alt="Moldivate Logo" >
            </div>
            <br />
            <h4 class="text-center mb5">Create a new account</h4>
            <p class="text-center">Please enter your credentials below</p>

            <div class="mb30"></div>

            <form action="/sign-up" method="post">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="input-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="name" type="text" class="form-control" placeholder="Enter Firstname">
                        </div><!-- input-group -->
                    </div>
                    <div class="col-sm-6">
                        <div class="input-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="secondName" type="text" class="form-control" placeholder="Enter Lastname">
                        </div><!-- input-group -->
                    </div>
                </div><!-- row -->
                <br />
                <div class="row">
                    <div class="col-sm-6">
                        <div class="input-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input name="email" type="text" class="form-control" placeholder="Enter Email Address">
                        </div><!-- input-group -->
                    </div>
                    <div class="col-sm-6">
                        <div class="input-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                            <input name="phone" type="tel" class="form-control" placeholder="Enter Phone">
                        </div><!-- input-group -->
                    </div>
                </div><!-- row -->
                <br />
                <div class="row">
                    <div class="col-sm-6">
                        <div class="input-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input name="password" type="password" class="form-control" placeholder="Enter Password">
                        </div><!-- input-group -->
                    </div>
                    <div class="col-sm-6">
                        <div class="input-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input type="password" class="form-control" placeholder="Enter Password Confirm">
                        </div><!-- input-group -->
                    </div>
                </div><!-- row -->
                <br />
                <div class="clearfix">
                    <div class="pull-left">
                        <div class="ckbox ckbox-primary mt5">
                            <input type="checkbox" id="agree" value="1">
                            <label for="agree">I agree with <a href="#">Terms and Conditions</a></label>
                        </div>
                    </div>
                    <div class="pull-right">
                        <button type="submit" class="btn btn-success">Create New Account <i class="fa fa-angle-right ml5"></i></button>
                    </div>
                </div>
            </form>

        </div><!-- panel-body -->
        <div class="panel-footer">
            <a href="/sign-in" class="btn btn-primary btn-block">Already a Member? Sign In</a>
        </div><!-- panel-footer -->
    </div><!-- panel -->

</section>


<script src="/resources/js/jquery-1.11.1.min.js"></script>
<script src="/resources/js/jquery-migrate-1.2.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/modernizr.min.js"></script>
<script src="/resources/js/pace.min.js"></script>
<script src="/resources/js/retina.min.js"></script>
<script src="/resources/js/jquery.cookies.js"></script>

<script src="/resources/js/custom.js"></script>

</body>
</html>
