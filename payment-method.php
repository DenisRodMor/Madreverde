<?php 
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
    {   
header('location:login.php');
}
else{
	if (isset($_POST['submit'])) {

		mysqli_query($con,"update orders set 	paymentMethod='".$_POST['paymethod']."' where userId='".$_SESSION['id']."' and paymentMethod is null ");
		unset($_SESSION['cart']);
		header('location:order-history.php');

	}
?>
<!DOCTYPE html>
<html lang="es">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>Tienda Virtual Madre Verde | Método de Pago</title>
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/green.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
		<link rel="stylesheet" href="assets/css/config.css">
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		<link rel="shortcut icon" href="assets/images/identificador.ico">

	</head>
    <body class="cnt-home">
	
		
<header class="header-style-1">
<?php include('includes/top-header.php');?>
<?php include('includes/main-header.php');?>
<?php include('includes/menu-bar.php');?>
</header>
<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="home.html">Inicio</a></li>
				<li class='active'>Método de Pago</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content outer-top-bd">
	<div class="container">
		<div class="checkout-box faq-page inner-bottom-sm">
			<div class="row">
				<div class="col-md-12">
					<h2>Elija un método de pago</h2>
					<div class="panel-group checkout-steps" id="accordion">
						<!-- checkout-step-01  -->
<div class="panel panel-default checkout-step-01">

	<!-- panel-heading -->
		<div class="panel-heading">
    	<h4 class="unicase-checkout-title">
	        <a data-toggle="collapse" class="" data-parent="#accordion" href="#collapseOne">
	         Seleccione tipo de pago
	        </a>
	     </h4>
    </div>
    <!-- panel-heading -->

	<div id="collapseOne" class="panel-collapse collapse in">

		<!-- panel-body  -->
	    <div class="panel-body">
	    <form name="payment" method="post">
	     <input type="radio" name="paymethod" value="SINPE"> SINPE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      <input type="radio" name="paymethod" value="PAYPAL"> Paypal &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      <input type="radio" name="paymethod" value="FISICA"> Efectivo &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	     <input type="radio" name="paymethod" value="Debit / Credit card"> Tarjeta de Crédito/Debito<br /><br />
	    	

		 <script src="https://secure.mlstatic.com/sdk/javascript/v1/mercadopago.js"></script>

	<form action="/process_payment" method="post" id="paymentForm">
   <h1>Detalles del comprador</h1>
     <div>
       <div>
         <label for="email">Correo electronico</label>
         <input id="email" name="email" type="text" value=""/>
       </div>
	   <BR>
       <div>
         <label for="docNumber">Cedula de identidad</label>
         <input id="docNumber" name="docNumber" data-checkout="docNumber" type="text"/>
       </div>
     </div>

       <BR>
         <BR>
   <h1>Detalles de la tarjeta</h1>
     <div>
       <div>
         <label for="cardholderName">Titular de la tarjeta</label>
         <input id="cardholderName" data-checkout="cardholderName" type="text">
       </div>
	   <BR>
       <div>
         <div class="form-group" id="expiration-date">
                <label>Fecha de Expiracion <span></span></label> &nbsp;
                <select>
                    <option value="01">Enero</option>
                    <option value="02">Febrero</option>
                    <option value="03">Marzo</option>
                    <option value="04">Abril</option>
                    <option value="05">Mayo</option>
                    <option value="06">Junio</option>
                    <option value="07">Julio</option>
                    <option value="08">Agosto</option>
                    <option value="09">Septiembre</option>
                    <option value="10">Octubre</option>
                    <option value="11">Noviembre</option>
                    <option value="12">Diciembre</option>
                </select>
                <select>
                    <option value="21"> 2021</option>
                    <option value="22"> 2022</option>
                    <option value="23"> 2023</option>
                    <option value="24"> 2024</option>
                    <option value="25"> 2025</option>
                    <option value="26"> 2026</option>
                </select>
            </div>
       </div>
	   
       <div>
         <label for="cardNumber">Número de la tarjeta</label>
         <input type="text" id="cardNumber" data-checkout="cardNumber"
           onselectstart="return false" onpaste="return false"
           oncopy="return false" oncut="return false"
           ondrag="return false" ondrop="return false" autocomplete=off maxlength="16">
       </div>
	   <BR>
       <div>
         <label for="securityCode">Código de seguridad</label>
         <input id="securityCode" data-checkout="securityCode" type="text"
           onselectstart="return false" onpaste="return false"
           oncopy="return false" oncut="return false"
           ondrag="return false" ondrop="return false" autocomplete=off maxlength="3">
       </div>
	   <BR>
       <div>
         <input type="hidden" name="transactionAmount" id="transactionAmount" value="100" />
         <input type="hidden" name="paymentMethodId" id="paymentMethodId" />
         <input type="hidden" name="description" id="description" />
         <br>
        
          <div class="form-group" id="credit_cards">
                <img src="assets/images/visa.png" id="visa"> &nbsp;&nbsp;
                <img src="assets/images/mastercard.png" id="mastercard">&nbsp;&nbsp;
                <img src="assets/images/paypal.png" id="amex">
           </div>
       </div>
	   <input type="submit" value="PROCEDER" name="submit" class="btn btn-primary" onclick="if(confirm('Se procedera a realizar el pedido, deseas continuar?')) {
			this.form.submit();}
			else{ alert('Operacion Cancelada');
			}">


   </div>
   

   <a class="the-most" target="_blank" href="http://fundacionmadreverde.org">
  <img src="http://fundacionmadreverde.org/wp-content/uploads/2019/01/Isologo-FMV-01-300x300.jpg">
		</a>
 </form>

		<!-- ============================================== BRANDS CAROUSEL ============================================== -->

<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->
</div><!-- /.body-content -->


<?php include('includes/footer.php');?>
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	
	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>

</body>
</html>
<?php } ?>