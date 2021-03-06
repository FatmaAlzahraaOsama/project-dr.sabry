<!DOCTYPE html>
<html lang="en">

<head>
  <title>House Craft</title>
<meta charset ="utf-8">
<!-- to ensure proper rendering and touch zoomung in mobile phones -->
<meta name="viewport" content ="width=device-width , initial-scale=1">
<!-- font awesome icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

.move {
color: red; 
font-size: 25px;
}
.icon-bar {
  width: 100%;
  background-color: #B29BCF; 
  overflow: auto;
}

.icon-bar a {
  float: left; 
  text-align: center; 
  width: 15%; 
  padding: 12px 0; 
  transition: all 0.3s ease; 
  color: white; 
  font-size: 36px;
}

.icon-bar a:hover {
  background-color: #D9D3E0; 
}

.active {
  background-color: #7F699A;
}
* { 

margin : 0px ;
padding: 0px;

}

body {
margin: 0 ;
}

.main {
position :  absolute ;
top : 2.5% ;
left :70% ; 
transform: translate ( -20%, -20% ) ; 
}

input{
border: 3px solid #220941;
hieght : 40px ; 
width : 250px ;
border-radius: 50px;
padding : 4px 10px ;

}
nav {
background : #C797D3 ;
width : 100% ;
overflow : auto ; 
}



.container {
max-width : 1200px ; 
margin : 0 ;
position :  absolute ;
top : 15% ;
left : 20% ; 
transform: translate ( -20%, -20% ) ; 
overflow : auto ; 
}

.gallery {
margin : 5px ;
border-radius :  25% solid #ccc ;
float : left ;
position: relative;
width : 300px ;
max-width: 400px;
}

.gallery img {
width : 100% ;
hieght : auto ; 
}

.rounded { 
border-radius: 25%;
}

.gallery .btn{ 
position :  absolute ;
top : 42% ;
left : 25% ; 
transform: translate ( -50%, -50% ) ; 
  -ms-transform: translate(-50%, -50%);
font-size: 16px;
padding : 16px  30px ;
border: 2px solid #220941;
box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); 
opacity: 0.8;
cursor: not-allowed;
border-radius: 30px;
text-align: center;
width: 155px;
}

.btn:hover {
background-color : #EAE7ED;

}
.gallery .btnn{ 
position :  absolute ;
top : 60% ;
left : 5% ; 
transform: translate ( -50%, -50% ) ; 
  -ms-transform: translate(-50%, -50%);
font-size: 215px;
padding : 16px  30px ;
border: none;
opacity: 0.8;
cursor: not-allowed;
border-radius: 30px;
text-align: center;
width: 270px;
}

.btnn:hover {
background-color : #EAE7ED;

}

</style>
</head>

<body>
<%
String email=session.getAttribute("email").toString();
%>
<div class="icon-bar">
  <a class="active" href="#"><i class="fa fa-home"></i></a>
<a href="#" style="font-size:20px;"><i class="fa fa-user"> <%out.println(email); %></i></a>
  <a href="#"><i class="fa fa-globe"></i></a>
  <a href="#"><i class="fa fa-envelope"></i></a>
</div>

<div class="main">
<input type= "text" name="box" placeholder="Search Anything You Want ... ">
</div>
<div class="btn">

  </button>
</div>
<br>
<% 
String msg=request.getParameter("msg");
if("seller".equals(msg)){%>

<h1  style="color:#B29BCF;text-align:center;">seller</h1>

<%}%>

<br>


<div class = "move">
<marquee behavior="scroll" direction="left" scrollamount="10"> You can now share your products with us :) </marquee>
</div>

<div class = "container">
<br><br><br><br>
<div class = "gallery">
<img src = "1.jpg" class = "rounded"  width="250px" hieght= "250px"  >
<button class="btn">Cooking</button>
</div>
<div class = "gallery">
<img src = "2.jpg" class = "rounded"  width="250px" hieght= "250px" >
<button class="btn">Art</button>
</div>
<div class = "gallery">
<img src = "3.jpg" class = "rounded"  width="250px" hieght= "250px">
<button class="btn">Embroidery and stitching</button>
</div>
<div class = "gallery">
<img src = "4.jpg" class = "rounded" >
<button class="btn">Crocheting and knitting</button>
</div>
<div class = "gallery">
<img src = "5.jpg" class = "rounded" >
<button class="btn">Accessories making</button>
</div>
<div class = "gallery">
<button class="btnn"  >+</button>
</div>
</body>
</html>
