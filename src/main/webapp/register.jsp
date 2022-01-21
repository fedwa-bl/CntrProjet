<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <link href="assets/css/style.css" rel="stylesheet">
    <script type="text/javascript" src="scriptjs/register.js"></script>
     
	
</head>
<body>
<body class="h-100">
    <div class="authincation h-100">
        <div class="container-fluid h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form">
                                    <h4 class="text-center mb-4">Authentification</h4>
                                    <form id="form">
                                        <div class="form-group">
                                            <label><strong>Prenom</strong></label>
                                            <input type="text" class="form-control" required="required" placeholder="Prenom.." name="Fname" id="Fname">
                                        </div>
                                        <div class="form-group">
                                            <label><strong>Nom</strong></label>
                                            <input type="text" class="form-control" required="required" placeholder="Nom" name="Lname" id="Lname">
                                        </div>
                                        <div class="form-group">
                                            <label><strong>Numero Telephone</strong></label>
                                            <input type="text" class="form-control" required="required" placeholder="06xxxxxxxx" name="phone" id="phone">
                                        </div>
                                        <div class="form-group">
                                            <label><strong>Email</strong></label>
                                            <input type="email" class="form-control" required="required" placeholder="hello@example.com" name="mail" id="mail">
                                        </div>
                                        <div class="form-group">
                                            <label><strong>Mot de passe</strong></label>
                                            <input type="password" class="form-control" required="required" name="pwd" id="pwd">
                                        </div>
                                        <div class="form-group">
                                            <label><strong>Confirmation mdp</strong></label>
                                            <input type="password" class="form-control" required="required" name="Cpwd" id="Cpwd">
                                        </div>
                                        <div class="text-center mt-4">
                                            <button type="submit" class="btn btn-primary btn-block" id="signup " >Inscription</button>
                                        </div>
                                    </form>
                                    <div class="new-account mt-3">
                                        <p>Already have an account? <a class="text-primary" href="./login.jsp">Se connecter</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="jsp files/footer.jsp" %>
    <script src="assets/vendor/global/global.min.js"></script>
    <script src="assets/js/quixnav-init.js"></script>


</body>
</html>