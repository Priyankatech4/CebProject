<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Carousel Page</title>
 <style>   
     h1 {
  font-size: 40px;
      }
    
    p{
    font-size: 20px;
    }
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="z1.jpg"  style="width:100%;">
      </div>

      <div class="item">
        <img src="z2.jpg" style="width:100%;">
      </div>
      
       <div class="item">
        <img src="z3.jpg" style="width:100%;">
      </div>
      
       <div class="item">
        <img src="z4.jpg" style="width:100%;">
      </div>
    
       <div class="item">
        <img src="z5.jpg" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br>
<br>

  <div>
    <h1>About NIIT</h1>
    <p>NIIT Limited is an Indian Multinational company that offers learning management and training delivery solutions 
       to corporations,institutions and individuals. It has three main lines of business worldwide: Corporate Learning 
       Group (CLG)Skills and Careers Group (SNC), and School Learning Group (SLG).</p>
      <p>In 2006, the IT services business of NIIT was demerged into a separately listed company NIIT Technologies. NIIT Limited now
       focuses on Corporate Training, Vocational Training for Services Sectors and Education and Training in Schools. NIIT Limited 
       owns 23.98% of NIIT Technologies.</p>
  </div>      
       
    
       
       <div class="row">
  <div class="col-md-4">
    <div class="thumbnail">
        <img src="y1.jpg" style="width:100%">
        <div class="caption">
        </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
        <img src="y2.jpg" style="width:100%">
        <div class="caption">
        </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
        <img src="y3.jpg" style="width:100%">
        <div class="caption">
        </div>
    </div>
  </div>
</div>
       
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>