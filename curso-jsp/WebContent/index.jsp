<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	
	<title>Curso de JSP</title>
	
	<style type="text/css">
	
	h3 {
	
	position: absolute;
	top: 15%;
	left: 27%;
	right: 30%;
	
	}
	
	.msg {
	
	position: absolute;
	top: 85%;
	left: 27%;
	right: 30%;
	font-size: 15px;
	color: #664d03;
    background-color: #fff3cd;
    border-color: #ffecb5;
	
	}
	
	form {
	
	position: absolute;
	top: 30%;
	left: 27%;
	right: 33%;
	
	}
	
	
	</style>
	
</head>
<body>


	<h3>Bem Vindo ao Curso de JSP</h3>
	
		
	<form action= "<%=request.getContextPath() %>/ServletLogin" method="post" class="row g-3 needs-validation" novalidate>
	
	<input type= "hidden" value= "<%=request.getParameter("url")%>" name= "url">
	
	<div class="mb-3">
	<label class="form-label">Login :</label>
	<input name= "login" type= "text" class="form-control" required="required">
	<div class="invalid-feedback">
      Informe Login !
    </div>
    <div class="valid-feedback">
      OK !
    </div>
	</div>
	
	<div class="mb-3">
	<label class="form-label">Senha :</label>
	<input name= "senha" type="password" class="form-control" required="required">
	<div class="invalid-feedback">
      Informe Senha !
    </div>
    <div class="valid-feedback">
      OK !
    </div>
	</div>
	
	
	<input type= "submit" value= "Acessar" class="btn btn-primary">
	
			
	</form>
	
	<h2 class="msg">${msg}</h2>
	
	<!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	
	<script type="text/javascript">
	
	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(function () {
	  'use strict'

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  var forms = document.querySelectorAll('.needs-validation')

	  // Loop over them and prevent submission
	  Array.prototype.slice.call(forms)
	    .forEach(function (form) {
	      form.addEventListener('submit', function (event) {
	        if (!form.checkValidity()) {
	          event.preventDefault()
	          event.stopPropagation()
	        }

	        form.classList.add('was-validated')
	      }, false)
	    })
	})()
	
	
	</script>
	
</body>
</html>