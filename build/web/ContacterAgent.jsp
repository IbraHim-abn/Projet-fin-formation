<%-- 
    Document   : abnaha
    Created on : 26 mai 2020, 23:06:35
    Author     : user
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="conn.MyConnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Contacter</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
<%
String id_ag = request.getParameter("id_ag");
Connection conn = MyConnection.getMyConnection();
Statement st = conn.createStatement();
String R1="";
String R2="";
String R3="";
String R4="";
ResultSet rs = st.executeQuery(" select * from AGENTS where ID_AGENT = '"+id_ag+"' ");
while(rs.next()){

R1=rs.getString(2);
R2=rs.getString(3);
R3=rs.getString(5);
R4=rs.getString(6);
}
%>

	<div class="container-contact100">
		<div class="wrap-contact100">
                    <form class="contact100-form validate-form" action="Index.jsp"  > 
				<span class="contact100-form-title">
					Information de l'agent
				</span>
                          
				<b class="label-input100" for="first-name" style="color: red">Name</b>
				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="Type first name">
                                    <input id="first-name" class="input100" type="text"value="<%out.print(R1);%>"disabled="disabled">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 rs2-wrap-input100 validate-input" data-validate="Type last name">
                                    <input class="input100" type="text" value="<%out.print(R2);%>" disabled="disabled">
					<span class="focus-input100"></span>
				</div>

                                <b class="label-input100" for="email" style="color: red"> E-mail </b>
				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ay@yt.xyz">
					<input id="email" class="input100" type="text"  value="<%out.print(R3);%>"disabled="disabled">
					<span class="focus-input100"></span>
				</div>

				<b class="label-input100" for="phone" style="color: red">Numéro de téléphone :</b>
				<div class="wrap-input100">
					<input id="phone" class="input100" type="text"  value="<%out.print(R4);%>"disabled="disabled" >
					<span class="focus-input100"></span>
				</div>

                                <div style="margin-top: 2%;">
                                    <button class="contact100-form-btn" >
						Reteur
					</button>
                                    </div>
                                
			</form>

                    <div class="contact100-form validate-form"  style="background-color: white">
                            <image src="images/contactme1.png" style="width: 100%;height: 100%;">
			</div>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
</body>
</html>
