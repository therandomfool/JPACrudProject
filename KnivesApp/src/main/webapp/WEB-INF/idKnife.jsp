<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Knife by Id</title>
</head>
<body>


	<form action="goToDelete.do">
		<div class="form-group">
			<label for="">Japanese Knives ID Search</label> 
			
		</div>
		<input type="submit" value="DELETE" button type="button"/>
	</form>
	
	<a  href="goToDelete.do">Delete Any Japanese Knife In Our Collection</a>
	 <a  href="goToUpdate.do">Modify A Japanese Knife</a>
	 <a  href="home.do">Modify A Japanese Knife</a>
	 
	 
<c:forEach var="f" items="${film}">
			<form action="deleteFilm.do" method="POST">
				<strong><em>${f.title}</em></strong> <input type="hidden" name="id"
					value="${f.id}" /> <br> <br> 
					<input type="submit" button
					type="button" id="returnFilmDelete" value="Delete"
					class="btn btn-outline-primary" />
			</form>
</body>
</html>