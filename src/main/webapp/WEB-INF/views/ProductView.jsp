<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

	<nav role="navigation" class="navbar navbar-inverse" >
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" data-target="#navbarCollapse"
			data-toggle="collapse" class="navbar-toggle">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a href="#" class="navbar-brand"
			style="font-family: Brush script MT, cursive; font-size: 30px; font-color: #FFFFFF; text-shadow: 10px 10px 0px #303030;">Baby's Cart</a>
	</div>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse" class="collapse navbar-collapse">
		<ul class="nav navbar-nav">
			<li class="action"><a href="home"><span class="glyphicon glyphicon-home"></span>Home</a></li>
			<li class="action"><a href="#">Hot deals</a></li>
			
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="home.jsp"><span
					class="glyphicon glyphicon-power-off"></span>Logout</a></li>
		</ul>
		
		
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span
					class="glyphicon glyphicon-shopping-cart"></span>My cart</a></li>
		</ul>
	</div>
	</nav>

	
		<!--ul class="nav navbar-nav">
			<li class=" active"><a href="#">Home</a></li>
		
			
			<!-- li class="action"><a href="hotdeals.jsp">Hot deals</a></li>
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#">Musical Instruments <b
					class="caret"></b></a>
				<ul role="menu" class="dropdown-menu"
					style="background-color: black; box-shadow: 2px 2px 4px 4px #707070;">
					<li><a href="guitars.jsp">guitars</a></li>
					<li><a href="violin.jsp">violin</a></li>
					<li><a href="piano.jsp">Piano</a></li>
					<li class="divider"></li>
					<li><a href="classicalinstruments.jsp">Classical
							Instruments</a></li>
				</ul></li-->
		

	
	
		
	
	
	
	<div class="container">

		<div class="row">
			<div class="row">
			<h4><font color="#101010">Choli</font></h4>

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="E:\programs\BabysCart\src\main\webapp\images\girlswear15.jpeg" class="img-responsive" style="height:200px; width:90%" alt="Image">
						<div class="caption">
							<h4 class="pull-right">$24.99</h4>
							<p>Self Design Kurti & Patiyala</p>
							
									<a href="singleProductView">Add to Cart</a>
							
						</div>
						<div class="ratings">
							<p class="pull-right">15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
				</div>

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail" >
						<img src="E:\programs\BabysCart\src\main\webapp\images\girlswear6.jpeg" class="img-responsive" style="height:200px; width:90%" alt="">
						<div class="caption">
							<h4 class="pull-right">$64.99</h4>
							<p>Kilkari Girl's Kurti</p>
							
									<a href="signin">Add to Cart</a>
							</div>
						<div class="ratings">
							<p class="pull-right">12 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
				</div>

				<!-- <div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src=<c:url value="/resources/images/ac1.jpg"/> class="img-responsive" style="height:200px; width:90%" alt="">
						<div class="caption">
							<h4 class="pull-right">$74.99</h4>
							
							<p>Acoustic guitar</p>
							
									<a href="signin">Add to Cart</a>
						</div>
						<div class="ratings">
							<p class="pull-right">31 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div>
					</div>
				</div>

				

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
					<img src=<c:url value="/resources/images/Ibanez.jpeg"/> class="img-responsive" style="height:200px; width:90%" alt="">	
						<div class="caption">
							<h4 class="pull-right">$94.99</h4>
							<p>Ibanez electric guitar</p>
							
									<a href="signin">Add to Cart</a>
						</div>
						<div class="ratings">
							<p class="pull-right"></p>
							<p>
								<span class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star"></span> <span
									class="glyphicon glyphicon-star-empty"></span>
							</p>
						</div> -->
					</div>
				</div>


			</div>

		</div>

	</div>


</body>
</html>