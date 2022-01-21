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
    <script type="text/javascript" src="scriptjs/cnx.js"></script>
     
	
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
                                    <h4 class="text-center mb-4">Se connecter</h4>
                                    <form id="form">
                                        <div class="form-group">
                                            <label><strong>Email</strong></label>
                                            <input type="email" class="form-control" placeholder="hello@example.com" name="mail" id="mail">
                                        </div>
                                        <div class="form-group">
                                            <label><strong>Password</strong></label>
                                            <input type="password" class="form-control"  name="pwd" id="pwd">
                                        </div>
                                        <div class="text-center mt-4">
                                            <button type="button" class="btn btn-primary btn-block" id="signup">login</button>
                                        </div>
                                    </form>
                                    <div class="new-account mt-3">
                                        <p>You don't have an account? <a class="text-primary" href="./register.jsp">Sign up</a></p>
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