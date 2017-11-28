<!DOCTYPE html>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
<title>Menu page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"           
  href="${pageContext.request.contextPath}/resources/css/style.css">
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
margin-left: 100px;}

.end{
margin-top: 200px;
}
A.hr{
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
margin-left: 560px;
margin-top: 220px;
}
</style>
</head>

<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card-2" id="myNavbar">
    <a href="http://localhost:8080/Epam_Stones_Project/" class="w3-bar-item w3-button w3-wide">ПОВЕРНУТИСЯ</a>
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

<div id = "wrapper">

   <div id = "header">
      <h2 class="center">SRM - Stones Relationship Manager</h2>

   </div>
</div>
  
<div id = "container">

   <div id = "content">
   
            <div class="cend">
       <table class="tabb">  
       
           <tr>    
                <th>Тип</th>
                <th>Коштовність</th>
                <th>Карати</th>
                <th>Ціна</th>
                <th>Дія</th>
               
       
           </tr>
           
           <c:forEach var = "tempStones" items="${stones}">
               
                  <c:url var="updateLink" value="showFormUpdate">
                     <c:param name="stoneId" value="${tempStones.id}"></c:param>
                  </c:url>
         
               
                  <c:url var="deleteLink" value="deleteStone">
                     <c:param name="stoneId" value="${tempStones.id}"></c:param>
                  </c:url>
         
           <tr>
                 <td>${tempStones.type}</td>
                 <td>${tempStones.jewel}</td>
                 <td>${tempStones.punish}</td>
                 <td>${tempStones.price}</td>
           <td>
                <a href="${updateLink}">Обновити</a>                
                |
                <a href="${deleteLink}" onclick="if(!(confirm('Are you sure you want delete this stone?')))return false">Видалити</a>
                       
           </td>
          
          </tr>
               
           </c:forEach>
           
       </table>
   </div>
   </div>    
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