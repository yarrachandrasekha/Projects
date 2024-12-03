<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DreamDest</title>
  <link rel="stylesheet" href="css/styles.css">
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous"
    referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
</head>

<body>
    
    <header>
    
    <div class="content flex_space">
            <!-- ... Other header content ... -->
            
     
    
        <div class="content flex_space">
          <div class="logo">
            <img src="images/logo.png" alt="">
          </div>
          <div class="navlinks">
            <ul id="menulist">
             <li><a href="hotelhome.jsp"><i class="fa fa-home" style="font-size:24px"></i></a> </li>
          <li><a href="viewallhotelsinfoadmin"><i class='fas fa-hotel' style='font-size:24px'></i></a> </li> 
		     <li><a href="login.jsp"><i class="fa fa-sign-in" style="font-size:24px"></i></a> </li>
         
            </ul>
            <span class="fa fa-bars" onclick="menutoggle()"></span>
          </div>
          
          <div class="add-hotel-button">
                <a href="hotelform.jsp" class="primary-btn">Add Hotel</a>
            </div>
            </div>
          
        </div>
      </header>
      

  <script>
    var menulist = document.getElementById('menulist');
    menulist.style.maxHeight = "0px";

    function menutoggle() {
      if (menulist.style.maxHeight == "0px") {
        menulist.style.maxHeight = "100vh";
      } else {
        menulist.style.maxHeight = "0px";
      }
    }
  </script>

<section class="rooms">
    <div class="container top">
      <div class="heading">
        <h1>EXPOLRE</h1>
        <h2>Our Reliable Partners</h2>
        <p>Get the most luxurious and affordable stays !
        </p>
      </div>

      <div class="content mtop">
        <div class="owl-carousel owl-carousel1 owl-theme">
        
        <c:forEach items="${hotelslist}" var="hotel">
        
          <div class="items">
            <div class="image">
              <img src='displayhotelimage?id=${hotel.id}' alt="">
            </div>
            <div class="text">
              <h2><c:out value="${hotel.name}"></c:out></h2>
              <div class="rate flex">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
              </div>
              <p><c:out value="${hotel.description}"></c:out></p>
              <p><c:out value="${hotel.location}"></c:out></p>
              <div class="button flex">
                <a class="primary-btn" href="deletehotel?hotelId=${hotel.id}">DELETE</a>
                <h3><c:out value="${hotel.price}"></c:out><span> <br> </span> </h3>
              </div>
              
            </div>
          </div>
          </c:forEach>
        </div>
      </div>
    </div>
  </section>
  
  <script>
    $(document).ready(function () {
      $('.owl-carousel1').owlCarousel({
        loop: true,
        margin: 40,
        nav: true,
        dots: false,
        navText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"],
        responsive: {
          0: {
            items: 1
          },
          768: {
            items: 2,
            margin: 10,
          },
          1000: {
            items: 3
          }
        }
      });
    });
  </script>
  

<section class="services top">
    <div class="container">
      <div class="heading">
        <h1>SERVICES</h1>
        <h2>Our Services</h2>
        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
      </div>


      <div class="content flex_space">
        <div class="left grid2">
          <div class="box">
            <div class="text">
              <i class="fa-solid fa-champagne-glasses"></i>
              <h3>Delious Food</h3>
            </div>
          </div>
          <div class="box">
            <div class="text">
              <i class="fa-solid fa-person-biking"></i>
              <h3>Fintness</h3>
            </div>
          </div>
          <div class="box">
            <div class="text">
              <i class="fa-solid fa-utensils"></i>
              <h3>Inhouse Restaurant</h3>
            </div>
          </div>
          <div class="box">
            <div class="text">
              <i class="fa-solid fa-spa"></i>
              <h3>Beauty Spa</h3>
            </div>
          </div>
        </div>
        <div class="right">
          <img src="images/service.png" alt="">
        </div>
      </div>
    </div>
  </section>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <script src="https://kit.fontawesome.com/82850c7587.js" crossorigin="anonymous"></script>
</body>
<footer>
    <div class="container grid">
      <div class="box">
        <img src="images/logo.png" alt="">
        <p>DreamDest is a premier hotel booking website that offers a seamless and
			convenient way to find and book accommodations worldwide</p>
        <div class="icon">
          <i class="fa fa-facebook-f"></i>
          <i class="fa fa-instagram"></i>
          <i class="fa fa-twitter"></i>
          <i class="fa fa-youtube"></i>
        </div>
      </div>

      <div class="box">
        <h2>Links</h2>
        <ul>
          <li>Company History</li>
          <li>About Us</li>
          <li>Contact Us</li>
          <li>Services</li>
          <li>Privacy Policy</li>
        </ul>
      </div>

      <div class="box">
        <h2>Contact Us</h2>
        <p>Feel free to contact us !.
        </p>
        <i class="fa fa-location-dot"></i>
        <label>KL University , Green Campus , Vaddeswaram , Vijayawada </label> <br>
        <i class="fa fa-phone"></i>
        <label>+91 8639686275</label> <br>
        <i class="fa fa-envelope"></i>
        <label>dreamdest.info@gmail.com</label> <br>
      </div>
    </div>
  </footer>
  <div class="legal">
    <p class="container">Copyright(c) 2023 DreamDest All Rights Reserved.</p>
  </div>