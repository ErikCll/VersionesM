<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CP.aspx.cs" Inherits="MartanyProyecto.CP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Bootstrap/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="Bootstrap/css/main.css"/>
    <title></title>
   <%-- holi--%>
    <style>
                .file-upload {
    display: inline-flex;
    align-items: center;
    font-size: 15px;
}

.file-upload__input {
    display: none;
}

.file-upload__button {
    -webkit-appearance: none;
    background: #57b846;
    border: 2px solid #00745d;
    border-radius: 4px;
    outline: none;
    padding: 0.5em 0.8em;
    margin-right: 15px;
    color: #ffffff;
    font-size: 1em;
    font-family: "Quicksand", sans-serif;
    font-weight: bold;
    cursor: pointer;
}

    .file-upload__button:active {
        background: #57b846;
    }

.file-upload__label {
    max-width: 250px;
    font-size: 0.95em;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
    font-family: "Quicksand", sans-serif;
}
    </style>

</head>
    	
	


    

<body>
    <%--<form id="form1" runat="server">--%>
        <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="img/martany.jpg" alt="IMG"/>
				</div>

				<form class="login100-form validate-form">
					<span class="login100-form-title">
						Registrar Producto
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Registra nombre del producto">
						<input class="input100" type="text" name="name" placeholder="Producto"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Falta agregar el precio">
						<input class="input100" type="text" name="prec" placeholder="Precio"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

                    <div class="wrap-input100 validate-input" data-validate = "Falta agregar la Descripción">
						<textarea class="input100" name="des" id="c" placeholder="Descripción" cols="30" rows="10"></textarea>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

                    <div class="file-upload">
  <input class="file-upload__input" type="file" name="myFile[]" id="myFile" multiple />
  <button class="file-upload__button" type="button">Choose File(s)</button>
  <span class="file-upload__label"></span>
</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Registrar
						</button>
					</div>

					<div class="text-center p-t-12">
						
						
					</div>

					<div class="text-center p-t-136">
						
					</div>
				</form>
			</div>
		</div>
	</div>
   <%-- </form>--%>
    <!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="Bootstrap/js/main.js"></script>
    <script>
        Array.prototype.forEach.call(
  document.querySelectorAll(".file-upload__button"),
  function(button) {
    const hiddenInput = button.parentElement.querySelector(
      ".file-upload__input"
    );
    const label = button.parentElement.querySelector(".file-upload__label");
    const defaultLabelText = "No file(s) selected";

    // Set default text for label
    label.textContent = defaultLabelText;
    label.title = defaultLabelText;

    button.addEventListener("click", function() {
      hiddenInput.click();
    });

    hiddenInput.addEventListener("change", function() {
      const filenameList = Array.prototype.map.call(hiddenInput.files, function(
        file
      ) {
        return file.name;
      });

      label.textContent = filenameList.join(", ") || defaultLabelText;
      label.title = label.textContent;
    });
  }
);

    </script>
</body>
</html>
