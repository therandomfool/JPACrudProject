<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>CREATE CUSTOM KNIVES</h1>

	<div class= "container-fluid">
		<form action="createKnives.do" method = "POST">
			<div class="form-group">
				<label for="">KNIFE STYLE / TYPE</label> 
				<select class="form-control" name="type" id="type">
					<option>Gyuto</option>
					<option>Kiritsuke</option>
					<option>Bunka</option>
					<option>Hankotsu</option>
					<option>Honesuki</option>
					<option>Funayuki</option>
					<option>Nakiri</option>
					<option>Sujihiki</option>
					<option>Santoku</option>
				</select>
			</div>
			<div class="form-group">
				<label for="">MAKER / FAMILY</label> 
				<select class="form-control" name="maker" id="maker">
					<option>Minamoto Hamon</option>
					<option>Katsushige Anryu</option>
					<option>Yasunori-san</option>
					<option>Goko</option>
					<option>Kitaoka</option>
					<option>Moritaka</option>
					<option>Daovua</option>
					<option>Kanehide</option>
					<option>Kato</option>
					<option>Takayuki</option>
					<option>Kikuichi</option>
					<option>MAC</option>
					<option>Okeya</option>
					<option>Kajiwara</option>
					<option>Yasunori</option>
				</select>
			</div>
			<div class="form-group">
				<label for="">CONSTRUCTION</label>
				<select class="form-control" name="construction" id="construction">
					<option>San Mai, Hammer Forged</option>
					<option>Laser Cut, Mono Steel</option>
					<option>Stamped Mono Steel</option>
				</select>
			</div>
			<div class="form-group">
				<label for="">STEEL</label> 
			
				<select class="form-control" name="steel" id="steel">
					<option>19C27</option>
					<option>Blue #2</option>
					<option>VG-10</option>
					<option>White #1</option>
					<option>Aogami Super Steel</option>
					<option>Pipeline Carbon Steel</option>
					<option>PS60 Stainless</option>
					<option>AEB-L</option>
					<option>SK-4 soft carbon steel</option>
					<option>Hitachi Blue #2 Steel</option>
					<option>Hitachi Aogami blue paper #2</option>
					<option>VG10 Suminagashi</option>
					<option>White #2 Carbon Steel</option>
					<option>ZDP189 Damascus</option>
					<option>Silver 3</option>

				</select>
			</div>
			<div class="form-group">
				<label for="">CLADDING</label> 
				<select class="form-control" name="cladding" id="cladding">
					<option>Stainless Steel</option>
					<option>Hammered Damascus</option>
					<option>Nashiji Finish</option>
					<option>Soft iron Jigane</option>
					<option>Nickel Damascus</option>
					<option>Tsuchime Finish</option>
					<option>Soft Stainless Awasi</option>
					<option>Multi-Layer Damascus Stainless Steel</option>
					<option>49 layer Stainless Damascus</option>
				</select>
			</div>

			<div class="form-group">
				<label for="">HANDLE</label> 
				<select class="form-control" name="handle" id="handle">
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
				<label for="">EDGE</label> <select class="form-control" name="edge" id="edge">
					<option>Even</option>
					<option>Single bevel L</option>
					<option>Single bevel R</option>
				</select>
			</div>
			
		<input name = "name" type="hidden" value="${Knives.name}" /> 
		<input name = "maker" type="hidden" value="${Knives.maker}" /> 
		
		<input name = "id" type="hidden" value="${Knives.id}" /> <input type="submit"
			value="CONTINUE" />
		</form>
	</div>
</body>
</html>