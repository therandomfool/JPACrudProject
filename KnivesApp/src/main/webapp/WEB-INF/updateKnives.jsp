<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/styles.css">
<link
	href="https://fonts.googleapis.com/css2?family=Merienda+One&display=swap"
	rel="stylesheet">
<link rel="icon" href="/resources/KNIFEimg/Katana-icon.jpg" />
</head>
<body id="udBG">
	<h1 class="text-center mt-5 bg-danger" >UPDATE YOUR KNIFE</h1>
	${Knives.id}
	<form action="updateKnives.do" method = "POST">
		<div class="form-group">
			<label class="ml-5 text-center border border-danger alert alert-success"  for="handle">CHOOSE YOUR NEW KNIFE HANDLE</label> 
			<select name="handle" class="form-control" id="handle">
				<option>Pakka Wood</option>
				<option>Rosewood Oval</option>
				<option>Black Pakka Wood</option>
				<option>Walnut Octagonal</option>
				<option>Rosewood Octagonal</option>
				<option>Bar-wa</option>
				<option>Magnolia Octagonal / Buffalo Horn</option>
				<option>Ergonomic Style Wooden Handle</option>
				<option>Custom Amboynia Burl Octagonal</option>
				<option>Yo Rosewood</option>
				<option>Rosewood Octagonal / Black Pakkawood</option>
				<option>Ebony / Rosewood oval wa handle</option>
				<option>Octagonal walnut / black pakka wood</option>
				<option>Ho Wood Octagonal / Buffalo Horn</option>
				<option>4,000 Year Old Bog Oak Octagonal</option>
				<option>Magnolia Wood Octagonal / Buffalo Horn</option>
				<option>Magnolia Wood Oval / Red Dyed Pakka Wood</option>
			</select>
		</div>
		<div class="form-group">
			<label class="ml-5 text-center border border-danger alert alert-success" for="handle">CHOOSE YOUR NEW KNIFE EDGE</label> <select
				name="edge" class="form-control" id="handle">
				<option>50 / 50 edge</option>
				<option>Single bevel L</option>
				<option>Single bevel R</option>
			</select>
		</div>
		<h4 class="text-center border border-danger alert alert-success">Your Knife ID:${Knives.id}</h4>
		<input name = "name" type="hidden" value="${Knives.name}" /> 
		<input name = "maker" type="hidden" value="${Knives.maker}" /> 
		
		<input name = "id" type="hidden" value="${Knives.id}" /> <input type="submit"
			value="CONTINUE" />
	</form>



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>