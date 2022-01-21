$(document).ready(function() {
	
	$("#signup").on("click",function(){
		alert("done");
			window.location.href = "login.jsp";
	});
	
	
$("#form").submit(function(event) {
 		var nom = $("#Lname").val();
		var prenom = $("#Fname").val();
		var phone= $("#phone").val();
		var mail= $("#mail").val(); 
		var pwd= $("#pwd").val();
		$.ajax({
			url: "ClientsController",
			data: {Nom :nom , Prenom:prenom , Phone:phone, Mail:mail, Pwd:pwd},
			type: 'post',

			success: function(data, textStatus, jqXHR) {
				alert("success");
				window.location.href = "login.jsp";
	
			},
			error: function(jqXHR, textStatus, errorthrown) {
				alert(textStatus);			 
			}
			
			
		});

	});
	$( "#Cpwd" ).change(function() {
		  
	var password = 	$("#pwd").val();
	var Cpass = $("#Cpwd").val();
	if(password != Cpass){
		alert("Comfirmation du mot de passe incorrecte");
	}
});
	
});
	
