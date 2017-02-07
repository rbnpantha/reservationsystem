<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Room Detail</title>


<hr>
<div class="container">
	<div class="col-md-8 col-md-offset-2">
		<div>
			<!-- <div class="row">
				<div class="col-md-9"> -->
					<div class="row">

						<c:forEach items="${room.image2}" var="imagesSet">
							<div class="col-md-4">
								<img alt="image" height="225px" width="225px"
									src="data:image/jpeg; base64,${imagesSet.encodeImage3}" />
							</div>
						</c:forEach>

					</div>
				<!-- </div>
			</div> -->
			<div class="row">
				<div class="col-md-8">
					<div>
						<h1>${room.roomNo}</h1>
					</div>
					<div>
						<span>Price : $</span>${room.dailyRent}</div>
					<div>
						<span>No. of Guest : </span>${room.guestNo}</div>
					<%-- <div>${product.manufacturer}</div> --%>
					<div>
						<span>Statu of Room : </span>${room.roomStatus}</div>
					<div>
						<span>Room Type : </span>${room.roomType}</div>
					<div>
						<span>Room Category : </span>${room.roomCategory}</div>

					<div>
						<span>Features :</span>
						<c:forEach var="roomFeatures" items="${room.roomFeatures}">
							<c:out value="${roomFeatures}" />
						</c:forEach>
					</div>
					<%-- <div>
							<span>Condition : </span>${room.condition}</div>
					</div> --%>
				</div>
				<div></div>

			</div>
			<div>
				<form action="booking/${room.roomNo}" method="post">
					<input type="submit" class="btn btn-success" value="Book Now">
				</form>
			</div>
		</div>
	</div>
</div>
</body>
<hr>