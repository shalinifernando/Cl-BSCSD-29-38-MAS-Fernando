<%-- 
    Document   : gallery
    Created on : Mar 9, 2025, 2:43:43 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>CSS Gallery</title>
  <link href="https://fonts.googleapis.com/css?family=Raleway:600,900" rel="stylesheet">
  <style>
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

html,
body {
  width: 100%;
  height: 100%;
  background-color: #eee;
}

ol,
ul {
  list-style: none;
}

/** Gallery **/

.gallery {
  margin: 0 auto;
  max-width: 940px;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
}

.gallery li {
  position: relative;
  float: left;
  width: 100%;
  height: 300px;
  background-repeat: no-repeat;
  background-position: 50% 50%;
  background-size: cover;
  transition: transform 500ms ease;
}

/** Overlay **/

.gallery li:after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.1);
  transition: background-color 500ms ease, box-shadow 500ms ease;
}

.gallery li:hover:after {
  background-color: rgba(0, 0, 0, 0);
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
}

.gallery li:first-child {
  background-image: url(https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
}

.gallery li:nth-child(2) {
  background-image: url(https://images.pexels.com/photos/326259/pexels-photo-326259.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
}

.gallery li:nth-child(3) {
  background-image: url(https://images.pexels.com/photos/191238/pexels-photo-191238.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
}

.gallery li:nth-child(4) {
  background-image: url(https://images.pexels.com/photos/2526128/pexels-photo-2526128.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
}

.gallery li:last-child {
  background-image: url(https://images.pexels.com/photos/100653/pexels-photo-100653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
}

/** Viewport >= 630px **/

@media (min-width: 630px) {
  .gallery li:first-child {
    width: 100%;
    height: 300px;
  }

  .gallery li {
    width: 50%;
    height: 250px;
  }
}

/** Viewport >= 940px **/

@media (min-width: 940px) {
  .gallery {
    margin-top: 60px;
    height: 450px;
  }

  .gallery li {
    width: 25%;
    height: 50%;
  }

  .gallery li:hover {
    z-index: 10;
    transform: scale(1.05);
  }

  .gallery li:first-child {
    width: 50%;
    height: 100%;
  }
}

  </style>
</head>
<body>
    <header>
       <jsp:include page="header.jsp"/>
    </header>
  <sectiion class="gallery-box">
  <ul class="gallery">
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
  </ul>
   
</sectiion>
  <footer>
       <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>