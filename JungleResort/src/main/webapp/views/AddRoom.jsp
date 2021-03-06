<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<div class="container" style="margin-top: 100px;">

	<form:form modelAttribute="room" method="POST" action="addroom"
		enctype="multipart/form-data">
		<!-- 			<h2> Language : <a href="?lang=en">English</a>|<a href="?lang=np">Nepali</a></h2> -->
		<!-- 			<h2>Add Car Information</h2> -->
		<div class="form-group">

			<div>
				<span><form:label path="roomNo">Room No</form:label></span> <span><form:input
						class="form-control" path="roomNo" name="testRoom" type="number" required="true"/></span>
				<span><form:errors path="roomNo" cssStyle="color:red;" /></span> <span><span
					class="colorRed">${errorMessage}</span></span>
			</div>

			<div>
				<span><form:label path="dailyRent">Daily Rent</form:label></span> <span><form:input
						class="form-control" path="dailyRent" type="number" value="" required="true"/></span> <span><form:errors
						path="dailyRent" cssStyle="color:red;" /></span>
			</div>

			<div>
				<span><form:label path="guestNo">Guest capacity</form:label></span>
				<span><form:input class="form-control" path="guestNo"
						type="number" value="" required="true"/></span> <span><form:errors
						path="guestNo" cssStyle="color:red;" /></span>
			</div>


			<div>
				<span>Status</span> <span><form:select class="form-control"
						path="roomStatus" id="roomStatus" required="true">
						<form:option value="" label="--- Select ---" />
						<form:options items="${roomStatus}" />
					</form:select></span> <span><form:errors path="roomStatus" cssStyle="color:red;" /></span>
			</div>


			<div>
				<span>Room Type</span> <span><form:select
						class="form-control" path="roomType" required="true">
						<form:option value="" label="--- Select ---" />
						<form:options items="${roomType}" />
					</form:select></span> <span><form:errors path="roomType" cssStyle="color:red;" /></span>
			</div>

			<div>
				<span>Category</span> <span><form:select class="form-control"
						path="roomCategory" id="roomCategory" required="true">
						<form:option value="" label="--- Select ---" />
						<form:options items="${roomCategory}" />
					</form:select></span> <span><form:errors path="roomCategory"
						cssStyle="color:red;" /></span>
			</div>

			<div>
				<span>Features</span> <span><form:checkboxes
						class="form-control" path="roomFeatures"
						items="${roomFeaturesTrans}" /></span>
			</div>

			<div>
				<span><form:label path="tempImg2">Image</form:label></span> <span><form:input
						class="form-control" type="file" multiple="multiple"
						path="tempImg2" accept=".jpg, .png, .jpeg" required="true"/></span> <span><span
					class="colorRed">${imageType2}</span></span>
			</div>

			<div>
				<span><input class="form-control btn btn-success" type="submit"
					value="Submit" /></span>
			</div>
		</div>
	</form:form>
</div>

