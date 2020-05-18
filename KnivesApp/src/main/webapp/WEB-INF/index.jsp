<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Musashi's Knife Shop</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/styles.css">
<link href="https://fonts.googleapis.com/css2?family=Merienda+One&display=swap" rel="stylesheet">
<link rel="icon" href="/resources/KNIFEimg/Katana-icon.jpg" />
</head>
<body class = "bg-info text-center title " id="backGHomePage">
	<h1  class="bg-danger mt-5 p-2">武蔵の包丁屋</h1>
	<h2 class="bg-danger mt-5 p-2">Musashi no hōchō-ya</h2>
	
	
<div class = "container-fluid">
	<div class="dropdown mt-5">
		<button class="btn btn-secondary dropdown-toggle mt-5" type="button"
			id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false">CHOICES</button>
		<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
			<a class="dropdown-item" href="goToKeyword.do">Japanese KnivesBy Keyword</a> 
			<a class="dropdown-item" href="goToGet.do">List Japanese Knives by ID</a> 
			<a class="dropdown-item" href="goToCreate.do">Create Your Own Custom Japanese Knife</a>
			<!-- <a class="dropdown-item" href="goToDelete.do">Delete Any Japanese Knife In Our Collection</a> -->
			<!-- <a class="dropdown-item" href="goToUpdate.do">Modify A Japanese Knife</a> -->
			<!-- <a class="dropdown-item" href="exit.do">Exit</a> -->
		</div>
	</div>
</div>	
	
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