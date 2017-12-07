<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Yulian
  Date: 20.03.2017
  Time: 13:17
  To change this template use File | Settings | File Templates.
--%>
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
    <link href="/resources/css/morris.css" rel="stylesheet">
    <link href="/resources/css/select2.css" rel="stylesheet" />
    <link href="/resources/js/css/css3clock/css/style.css" rel="stylesheet">
    <link href="/resources/css/style.calendar.css" rel="stylesheet">

</head>

<body>

<header>
    <div class="headerwrapper">
        <div class="header-left">
            <a href="index.html" class="logo">
                <img src="/resources/images/logo.png" alt="" />
            </a>
            <div class="pull-right">
                <a href="#" class="menu-collapse">
                    <i class="fa fa-bars"></i>
                </a>
            </div>
        </div><!-- header-left -->

    </div><!-- headerwrapper -->
</header>

<section>
    <div class="mainwrapper">
        <div class="leftpanel">
            <div class="media profile-left">
                <a class="pull-left profile-thumb" href="#">
                    <img class="img-circle" src="/resources/images/photos/profile.png" alt="">
                </a>
                <div class="media-body">
                    <h4 class="media-heading" id="credentials"></h4>
                    <span class="user-options"><a href="#"><i class="glyphicon glyphicon-user"></i></a>
                              <a href="#"><i class="glyphicon glyphicon-envelope"></i></a>
                              <a href="#"><i class="glyphicon glyphicon-cog"></i></a>
                              <a href="#"><i class="glyphicon glyphicon-log-out"></i></a>
							</span>
                </div>
            </div><!-- media -->


            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
                <li class="parent"><a href="#"><i class="fa fa-suitcase"></i> <span>Elements example</span></a>
                    <ul class="children">
                        <li><a href="#">Inner element 1</a></li>
                        <li><a href="#">Inner element 2</a></li>
                        <li><a href="#">Inner element 3</a></li>
                        <li><a href="#">Inner element 4</a></li>
                        <li><a href="#">Inner element 5</a></li>
                    </ul>
                </li>

            </ul>

        </div><!-- leftpanel -->

        <div class="mainpanel">
            <div id="content" class="contentpanel">




            </div><!-- contentpanel -->
        </div><!-- mainpanel -->
    </div><!-- mainwrapper -->
</section>

<script src="/resources/js/jquery-1.11.1.min.js"></script>
<script src="/resources/js/jquery-migrate-1.2.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/modernizr.min.js"></script>
<script src="/resources/js/pace.min.js"></script>
<script src="/resources/js/retina.min.js"></script>
<script src="/resources/js/jquery.cookies.js"></script>
<script src="/resources/js/jquery.scrollTo.min.js"></script>
<script src="/resources/js/jquery.slimscroll.js"></script>

<script src="/resources/js/jquery.sparkline.min.js"></script>
<script src="/resources/js/morris.min.js"></script>
<script src="/resources/js/raphael-2.1.0.min.js"></script>
<script src="/resources/js/bootstrap-wizard.min.js"></script>
<script src="/resources/js/select2.min.js"></script>
<script src="/resources/js/css3clock/js/css3clock.js"></script>
<script src="/resources/js/jquery-ui-1.10.3.min.js"></script>
<script src="/resources/js/moment.min.js"></script>
<script src="/resources/js/fullcalendar.min.js"></script>
<script src="/resources/js/custom.js"></script>
<script>
    $(document).ready(function () {
        $.ajax({
            url:'/user/info',
            method:'GET',
            contentType:'application/json',
            success:function (response) {
                $("#credentials").text(response.name+" "+response.secondName);
            }
        })

        var HTML = "";

        $.ajax({
            url:'/commodities/all',
            method:'GET',
            contentType:'application/json',
            success:function (response) {
                for(var i = 0; i < response.length; i++){
                    HTML+="<div class='col-md-4'>"
                        +"<div class='panel panel-default'>"
                        +"<div class='panel-body'>"
                        +"<h5 class='md-title mt0 mb10'>"+ response[i].description +"</h5>"
                        +"<div class='picture'>"

                        +"</div>"
                        +"</div>"
                        +"<div class='panel-footer'>"
                        +"</div>"
                        +"</div>"
                        +"</div>";
                }

                $("#content").append(HTML);
            }
        })
    })
</script>
</body>
</html>
