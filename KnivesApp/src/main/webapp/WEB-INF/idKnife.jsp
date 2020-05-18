<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Knife by Id</title>
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
<body>
	<h1>Successfully hit the knife id</h1>


	<c:choose>
		<c:when test="${! empty knives }">
			<div class="container">


<h1>See Something in case it pops out</h1>

					<c:forEach var="knives" items="${knives}">
						<div class="container-fluid mt-5 title">
							<div class="text-center">
								<img class="border border-danger rounded"
									src="resources/KNIFEimg/${knives.imgLink}" class="img-fluid"
									alt="Responsive image">


								<h1 class="border border-danger alert alert-dark">Knives:
									${knives.name}</h1>
								<ul
									class="border border-danger list-group list-group-horizontal-sm list-inline justify-content-center">
									<li class="list-group-item ">Edge : ${knives.edge}</li>
									<li class="list-group-item ">Weight : ${knives.weight}</li>
									<li class="list-group-item ">BladeLength :
										${knives.bladeLength}</li>
									<li class="list-group-item ">TotalLength :
										${knives.totalLength}</li>
									<li class="list-group-item ">BladeHeight :
										${knives.bladeHeight}</li>
									<li class="list-group-item ">SpineThickness :
										${knives.spineThickness}</li>
								</ul>
								<ul
									class="border border-danger list-inline justify-content-center">
									<li class="list-group-item " id="maker">Maker :
										${knives.maker}</li>
									<li class="list-group-item ">Construction :
										${knives.construction}</li>
									<li class="list-group-item ">Steel : ${knives.steel}</li>
									<li class="list-group-item ">Cladding : ${knives.cladding}</li>
									<li class="list-group-item ">Description :
										${knives.description}</li>

								</ul>
							</div>
						</div>


					</c:forEach>
			</div>
		</c:when>

		<c:when test="${! empty knives }">
			<c:forEach var="k" items="${knives}">
				<form action="deleteFilm.do" method="POST">
					<c:out value="${k.type}" />
					<c:out value="MAKER: ${k.maker}" />
					<input type="hidden" name="id" value="${k.id}" /> <br> <input
						type="submit" type="button" id="deleteKnives" value="Delete"
						class="btn btn-outline-primary" />
				</form>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<h5>Knives Completed</h5>
		</c:otherwise>
	</c:choose>
	<a href="index.do">HOME</a>


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