<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://opensource.keycdn.com/fontawesome/4.6.3/font-awesome.min.css"
	integrity="sha384-Wrgq82RsEean5tP3NK3zWAemiNEXofJsTwTyHmNb/iL3dP/sZJ4+7sOld1uqYJtE"
	crossorigin="anonymous">
<link
	href="${pageContext.request.contextPath}/resources/css/profile.css"
	rel="stylesheet">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/profile.js"></script>

<nav id="sticker" class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<a class="menu"><i class="fa fa-bars" id="menu_icon"></i></a> <a
				class="navbar-brand" href="#"> <img
				src="https://www.google.co.in/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"
				class="img-responsive" />

			</a>
		</div>
		<!--navbar-header close-->
		<div class="collapse navbar-collapse drop_menu" id="content_details">
			<ul class="nav navbar-nav navbar-right">

				<li><a href="#"><span class="glyphicon glyphicon-home"></span>
						Home</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-font"></span>
						About Us</a></li>

				<li><a href="#"><span
						class="glyphicon glyphicon-heart-empty"></span> Why Choose us</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-phone"></span>
						What We Do</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Contact Us</a></li>
				<li><a href="#" data-toggle="modal" data-target="#myModal"><span
						class="glyphicon glyphicon-search"></span> Search</a></li>


			</ul>
			<!--navbar-right close-->
		</div>
		<!--collapse navbar-collapse drop_menu close-->
	</div>
	<!--container-fluid close-->
</nav>
<!--navbar navbar-inverse close-->
<!--search box-->
<div class="container">
	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">Search Section</h4>
				</div>
				<div class="modal-body">





					<section class="search-box1" id="panel">
						<div class="container">
							<form class="form-inline" role="form">
								<div class="col-sm-8 col-xs-8 form-group top_search"
									style="padding-right: 0px;">
									<div class="row">
										<label class="sr-only" for="search">Search here...</label> <span
											class="serach-footer"><img src="images/srch.png" /></span> <input
											type="text" class="form-control search-wrap" id="search"
											placeholder="Search here...">
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4 col-xs-4 form-group top_search"
										style="padding-left: 0px;">
										<button type="submit" class="btn btn-default search-btn">SEARCH</button>
									</div>
								</div>
							</form>
						</div>
					</section>



				</div>

			</div>
		</div>

	</div>
</div>
<br>
<br>
<br>












<section>

	<div class="container" style="margin-top: 30px;">
		<div class="profile-head">
			<div class="col-md- col-sm-4 col-xs-12">
				<img
					src="http://www.newlifefamilychiropractic.net/wp-content/uploads/2014/07/300x300.gif"
					class="img-responsive" />
				<h6>Jenifer Smith</h6>
			</div>
			<!--col-md-4 col-sm-4 col-xs-12 close-->


			<div class="col-md-5 col-sm-5 col-xs-12">
				<h5>Jenifer Smith</h5>
				<p>Web Designer / Develpor</p>
				<ul>
					<li><span class="glyphicon glyphicon-briefcase"></span> 5
						years</li>
					<li><span class="glyphicon glyphicon-map-marker"></span>
						U.S.A.</li>
					<li><span class="glyphicon glyphicon-home"></span> 555 street
						Address,toedo 43606 U.S.A.</li>
					<li><span class="glyphicon glyphicon-phone"></span> <a
						href="#" title="call">(+021) 956 789123</a></li>
					<li><span class="glyphicon glyphicon-envelope"></span><a
						href="#" title="mail">jenifer123@gmail.com</a></li>

				</ul>


			</div>
			<!--col-md-8 col-sm-8 col-xs-12 close-->




		</div>
		<!--profile-head close-->
	</div>
	<!--container close-->


	<div id="sticky" class="container">

		<!-- Nav tabs -->
		<ul class="nav nav-tabs nav-menu" role="tablist">
			<li class="active"><a href="#profile" role="tab"
				data-toggle="tab"> <i class="fa fa-male"></i> Profile
			</a></li>
			<li><a href="#change" role="tab" data-toggle="tab"> <i
					class="fa fa-key"></i> Edit Profile
			</a></li>
		</ul>
		<!--nav-tabs close-->

		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane fade active in" id="profile">
				<div class="container">

					<section>
						<h1>All Rooms list</h1>
						<table>
							<tr>
								<th>Booking ID</th>
								<th>Room ID</th>
								<th>Customer ID</th>
								<th>Start Date</th>
								<th>End Date</th>


							</tr>
							<c:forEach items="${booking}" var="booking">
								<tr>
									<td>${booking.id}</td>
									<td>${booking.roomId}</td>
									<td>${booking.customerId}</td>
									<td>${booking.startDate}</td>
									<td>${booking.endDate}</td>

									<td>
										<form action="/bookingDetail/${booking.id}">
											<input type="submit" value="Detail" />
										</form>
									</td>
								</tr>
							</c:forEach>
						</table>

					</section>
				</div>
				<!--table-responsive close-->
			</div>
			<!--col-md-6 close-->

		</div>
		<!--row close-->
	</div>
</section>
<!--section close-->

