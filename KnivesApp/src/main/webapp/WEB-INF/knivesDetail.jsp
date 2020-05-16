<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Knives Detail</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/styles.css">
</head>
<body>


	<div class="container-fluid mt-5">
		<div class="text-center">


			<p class="badge badge-pill badge-primary">Knives: ${knives.name}
			<p>maker: ${knives.maker}</p>
			<p>construction: ${knives.construction}</p>
			<p>steel: ${knives.steel}</p>
			<p>cladding: ${knives.cladding}</p>
			<p>edge: ${knives.edge}</p>
			<p>weight: ${knives.weight}</p>
			<p>bladeLength: ${knives.bladeLength}</p>
			<p>totalLength: ${knives.totalLength}</p>
			<p>spineThickness: ${knives.spineThickness}</p>
			<p>bladeHeight: ${knives.bladeHeight}</p>
			<p>description: ${knives.description}</p>
			<p>imgLink: ${knives.imgLink}</p>

			<img src="resources/KNIFEimg/${knives.imgLink}" class="img-fluid"
				alt="Responsive image">

			<!-- <audio controls autoplay>
				
				<source src="resources/KNIFEimg/music.mp3" type="audio/mpeg">
			</audio> -->



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