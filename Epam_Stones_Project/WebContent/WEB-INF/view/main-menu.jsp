<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8" %>
<html>
<title>Menu page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="shortcut icon" href=${pageContext.request.contextPath}/resources/images/5.jpg type="image/png">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body, html {
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
.hed{
margin-left: 450px;
}
.cet{

margin-left: 200px;}
.lf{
margin-left: -450px;
}
.siz{

}
.im{}
</style>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card-2" id="myNavbar">
    <a href="http://localhost:8080/Epam_Stones_Project/showList" class="w3-bar-item w3-button w3-wide">ВИБРАТИ КАМІННЯ</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="#about" class="w3-bar-item w3-button">ПРО КОМПАНІЮ</a>
      <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> ШТАТ ПРАЦІВНИКІВ</a>
      <a href="#work" class="w3-bar-item w3-button"><i class="fa fa-th"></i> НАШІ РОБОТИ </a>
      <a href="#pricing" class="w3-bar-item w3-button"><i class="fa fa-usd"></i>ЦІНИ</a>
      <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i> КОНТАКТИ</a>
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Header with full-height image -->
<header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-left w3-text-white" style="padding:48px">
    <img class="im" src="${pageContext.request.contextPath}/resources/images/5.jpg">
  
  </div> 

</header>

<!-- About Section -->
<div class="w3-container" style="padding:168px 16px" id="about">
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center"></i>
      <p class="w3-large">Наш магазин в Інтеренеті</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-heart w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Пристрасть для створення коштовностей</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-diamond w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large"> Спеціальний дизайн для діамантів</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-cog w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Фабрика коштовностей</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>
    </div>
  </div>
</div>

<!-- Promo Section - "We know design" -->
<div class="w3-container w3-light-grey" style="padding:128px 16px">
  <div class="w3-row-padding">
    <div class="w3-col m6">
      <h3>Ми маємо різноманітний і багатий вибір коштовного каміння</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod<br>tempor incididunt ut labore et dolore.</p>
      <p><a href="#work" class="w3-button w3-black"><i class="fa fa-th"> </i>Переглянути наші роботи</a></p>
    </div>
    <div class="w3-col m6">
      <img class="w3-image w3-round-large" src="${pageContext.request.contextPath}/resources/images/7.jpg"  alt="Buildings" width="700" height="394">
    </div>
  </div>
</div>

<!-- Team Section -->
<div class="siz">
<div class="w3-container" style="padding:128px 16px" id="team">
  <h3 class="w3-center">Розробник</h3>
  <p class="w3-center w3-large">Завдання на лабораторну роботу з КМ</p>
  <div class="w3-row-padding w3-grayscale" style="margin-top:64px ; margin-left: 760px;">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card-2">
        <img src="${pageContext.request.contextPath}/resources/images/photo.jpg" alt="Ostap" style="width:100%">
        <div class="w3-container">
          <h3>Остап Мацько (студент КІ-46)</h3>
          <p class="w3-opacity"></p>
          <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
          <p><button class="w3-button w3-light-grey w3-block"><i class="fa fa-envelope"></i> Контакт зі мною</button></p>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
<!-- Promo Section "Statistics" -->
<div class="w3-container w3-row w3-center w3-dark-grey w3-padding-64">
  <div class="w3-quarter">
    <span class="w3-xxlarge">3+</span>
    <br>Партнери
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">10K+</span>
    <br>Проданих коштовностей
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">96%</span>
    <br>Щасливих клієнтів
  </div>
  <div class="w3-quarter">
    <span class="w3-xxlarge">150+</span>
    <br>Наш вибір коштовностей
  </div>
</div>

<!-- Work Section -->
<div class="w3-container" style="padding:128px 16px" id="work">
  <h3 class="w3-center">НАШІ РОБОТИ</h3>
  <p class="w3-center w3-large">Ми робимо для людей</p>

  <div class="w3-row-padding" style="margin-top:64px">
    <div class="w3-col l3 m6">
      <img src="${pageContext.request.contextPath}/resources/images/t1.jpg" style="width:100%" height="430px"; onclick="onClick(this)" class="w3-hover-opacity" alt="A microphone">
    </div>
    <div class="w3-col l3 m6">
      <img  src="${pageContext.request.contextPath}/resources/images/t2.jpg" style="width:100%" height="430px"; onclick="onClick(this)" class="w3-hover-opacity" alt="A phone">
    </div>
    <div class="w3-col l3 m6">
      <img  src="${pageContext.request.contextPath}/resources/images/t3.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="A drone">
    </div>
    <div class="w3-col l3 m6">
      <img src="${pageContext.request.contextPath}/resources/images/t4.jpg" style="width:100%"  height="430px"; onclick="onClick(this)" class="w3-hover-opacity" alt="Soundbox">
    </div>
  </div>

  <div class="w3-row-padding w3-section">
    <div class="w3-col l3 m6">
      <img src="${pageContext.request.contextPath}/resources/images/t6.jpg" style="width:100%" height="430px"; onclick="onClick(this)" class="w3-hover-opacity" alt="A tablet">
    </div>
    <div class="w3-col l3 m6">
      <img src="${pageContext.request.contextPath}/resources/images/t5.jpg" style="width:100%" height="430px"; onclick="onClick(this)" class="w3-hover-opacity" alt="A camera">
    </div>
    <div class="w3-col l3 m6">
      <img src="${pageContext.request.contextPath}/resources/images/t8.jpg" style="width:100%" height="430px"; onclick="onClick(this)" class="w3-hover-opacity" alt="A typewriter">
    </div>
    <div class="w3-col l3 m6">
      <img src="${pageContext.request.contextPath}/resources/images/t7.jpg" style="width:100%" height="430px"; onclick="onClick(this)" class="w3-hover-opacity" alt="A tableturner">
    </div>
  </div>
</div>

<!-- Modal for full size images on click-->
<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-button w3-xxlarge w3-black w3-padding-large w3-display-topright" title="Close Modal Image">×</span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" class="w3-image">
    <p id="caption" class="w3-opacity w3-large"></p>
  </div>
</div>

<!-- Skills Section -->
<div class="w3-container w3-light-grey w3-padding-64">
  <div class="w3-row-padding">
    <div class="w3-col m6">
      <h3>Наші навички.</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod<br>
      tempor incididunt ut labore et dolore.</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod<br>
      tempor incididunt ut labore et dolore.</p>
    </div>
    <div class="w3-col m6">
      <p class="w3-wide"></i>Браслети</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:90%">90%</div>
      </div>
      <p class="w3-wide"></i>Намисто</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:85%">85%</div>
      </div>
      <p class="w3-wide"></i>Перстні</p>
      <div class="w3-grey">
        <div class="w3-container w3-dark-grey w3-center" style="width:75%">75%</div>
      </div>
    </div>
  </div>
</div>

<!-- Pricing Section -->
<div class="w3-container w3-center w3-dark-grey" style="padding:128px 16px" id="pricing">
  <h3>СПЕЦІАЛЬНІ ПРОПОЗИЦІЇ</h3>
  <p class="w3-large">ВИБІР ПІДХОДЯЩОЇ ПРОПОЗИЦІЇ ДЛЯ ВАС.</p>
  <div class="w3-row-padding" style="margin-top:64px">
    <div class="w3-third w3-section">
      <ul class="w3-ul w3-white w3-hover-shadow">
        <li class="w3-black w3-xlarge w3-padding-32">ЗОЛОТО</li>
        <li class="w3-padding-16">
          <h2 class="w3-wide">$ 599</h2>
          <span class="w3-opacity">За місяць</span>
        </li>
        <li class="w3-light-grey w3-padding-24">
          <button class="w3-button w3-black w3-padding-large">Більше</button>
        </li>
      </ul>
    </div>
    <div class="w3-third">
      <ul class="w3-ul w3-white w3-hover-shadow">
        <li class="w3-red w3-xlarge w3-padding-48">ДІАМАНТ</li>
        <li class="w3-padding-16">
          <h2 class="w3-wide">$ 1250</h2>
          <span class="w3-opacity">За місяць</span>
        </li>
        <li class="w3-light-grey w3-padding-24">
          <button class="w3-button w3-black w3-padding-large">Більше</button>
        </li>
      </ul>
    </div>
    <div class="w3-third w3-section">
      <ul class="w3-ul w3-white w3-hover-shadow">
        <li class="w3-black w3-xlarge w3-padding-32">Срібло</li>
        <li class="w3-padding-16">
          <h2 class="w3-wide">$ 299</h2>
          <span class="w3-opacity">За місяць</span>
        </li>
        <li class="w3-light-grey w3-padding-24">
          <button class="w3-button w3-black w3-padding-large">Більше</button>
        </li>
      </ul>
    </div>
  </div>
</div>

<!-- Contact Section -->
<div class="lf">
<div class="w3-container w3-light-grey" style="padding:128px 16px" id="contact" >
<div class="hed">
  <h3 class="w3-center">НАШІ КОНТАКТИ</h3>
  <p class="w3-center w3-large">Давайте тримати зв'язок. Напишіть нам повідомлення:</p>
  </div>
  <div class="w3-row-padding" style="margin-top:64px; margin-left: 600px;">
    <div class="w3-half">
      <p><i class="fa fa-map-marker fa-fw w3-xxlarge w3-margin-right"></i> Україна, Львів</p>
      <p><i class="fa fa-phone fa-fw w3-xxlarge w3-margin-right"></i> Телефон: +(380)956213271</p>
      <p><i class="fa fa-envelope fa-fw w3-xxlarge w3-margin-right"> </i> Пошта: ostap199741@gmail.com</p>
      <br>
      <form action="/action_page.php" target="_blank">
        <p><input class="w3-input w3-border" type="text" placeholder="Name" required name="Name"></p>
        <p><input class="w3-input w3-border" type="text" placeholder="Email" required name="Email"></p>
        <p><input class="w3-input w3-border" type="text" placeholder="Subject" required name="Subject"></p>
        <p><input class="w3-input w3-border" type="text" placeholder="Message" required name="Message"></p>
        <p>
        <div class = "cet">
          <button class="w3-button w3-black" type="submit">
            <i class="fa fa-paper-plane"></i>НАДІСЛАТИ ПОВІДОМЛЕННЯ
          </button>
          </div>
        </p>
      </form>
    </div>
    
    <div class="w3-half">
      <!-- Add Google Maps -->
      <div id="googleMap" class="w3-greyscale-max" style="width:100%;height:510px;">
      <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d20572.494201924077!2d24.04468055740967!3d49.86947599121359!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1suk!2sua!4v1503084373244" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
      
      
      </div>
    </div>
  </div>
</div>
</div>
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>Наверх</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Створив<a href="#" title="W3.CSS" target="_blank" class="w3-hover-text-green">Остап Мацько (студент КІ-46)</a></p>
</footer>
 
<!-- Add Google Maps -->

</body>
</html>
