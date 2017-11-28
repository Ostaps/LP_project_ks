<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=utf-8" %>
<html>

<head>

<title>Add Form</title>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"           
  href="${pageContext.request.contextPath}/resources/css/add-stone-style.css">
  <link rel="shortcut icon" href=${pageContext.request.contextPath}/resources/images/5.jpg type="image/png">

<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body, html {
    color:black;
    height: 100%;
    line-height: 1.8;
}
/* Full height image header */
.bgimg-1 {
    background-position: center;
    background-size: cover;
    background-image: url("/w3images/mac.jpg");
    min-height: 100%;
}
.w3-bar .w3-button {
    padding: 16px;
}
.cet{

margin-left: 200px;}

#carats{
margin-left:50px;
}
#gevel{
margin-left:65px;
font-family: 35px;
}
.end{
margin-top: 200px;
}
.fonts{
font-family: fantasy;
font-size: 35px;
}
.hr{
color:white;
}
.siz{
size:100px;
}
body{
background-image: url("${pageContext.request.contextPath}/resources/images/112.jpg");
}
.center{
text-align: center;
color:black;
}
A{
color:black;
}
A:visited{
color:black;
}
A:active{
color:black;
}
#content{
color: black;
}
.cend{
margin-left: 500px;
margin-top: 240px;
}
#hed{
margin-left: 0px;
}
#submitButton{
margin-left: 20px;
}
body{
background-image: url("${pageContext.request.contextPath}/resources/images/112.jpg");
}

h2, h3{
color:black;
}
h3{
margin-left: 40px;
}
#container{
margin-left: 790px;
}
</style>

</head>

<body>


<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card-2" id="myNavbar">
    <a href="http://localhost:8080/Epam_Stones_Project/showList" class="w3-bar-item w3-button w3-wide">ПОВЕРНУТИСЯ</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="http://localhost:8081/Epam_Stones_Project/showFormAdd" class="w3-bar-item w3-button"></i>ДОДАТИ</a>
      <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> ОБНОВИТИ</a>
      <a href="#work" class="w3-bar-item w3-button"><i class="fa fa-th"></i> ВИДАЛИТИ</a>
      <a href="#pricing" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> ІНФОРМАЦІЯ</a>
      <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i> ІНШЕ</a>
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<div id="wrapper">
    
    <div id="header">
       <h2>SRM - Stone Relationship Manager</h2>
    
    </div>

</div>

<div id="container">
     <h3 id="hed"><b>Зберегти коштовність</b></h3>

        <form:form action="saveStone" modelAttribute="stones" method="POST">
     
                   
                       <h3 class="fonts"><label>Тип:</label></h3>
                       <form:input path="type"/>       
                
                   
                       <h3 id="gevel" class="fonts"><label>Коштовність:</label></h3>
                       <form:input path="jewel"/>       
                   
                      <h3 id="carats" class="fonts"><label>Карати:</label></h3>
                      <form:input path="punish"/>       
                   
                      <h3 class="fonts"><label>Ціна:</label></h3>
                      <form:input path="price"/>       
                   
                      <h3><label></label>
                      <div id = "submitButton">
                       <input type="submit" value="Save" class="save">
                       </div>       
                    </form:form>
        
        
</div>



<div class="end">
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-38">
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Створив <a href="#" class = "hr" title="W3.CSS" target="_blank" class="w3-hover-text-green">Остап Мацько (студент КІ-46)</a></p>
</footer>
</div>

</body>

</html>