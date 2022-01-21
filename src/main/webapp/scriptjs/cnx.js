$(document).ready(function() {
		
$("#signup").click(function(event) {
	var mail= $("#mail").val(); 
		var pwd= $("#pwd").val();
		if(mail=="admin@gmail.com"&&pwd=="admin"){
			//alert("test");
			window.location.href = "views/index.jsp";

			}
			else{
			window.location.href = "home.jsp";

			}
	});	
$("#form").submit(function(event) {
		var mail= $("#mail").val(); 
		var pwd= $("#pwd").val();
		if(mail=="admin@gmail.com"&&pwd=="admin"){
			//alert("test");
			window.location.href = "views/index.jsp";

			}
			else{
		$.ajax({
			url: "ClientsController",
			data: {op:"connect",Mail:mail, Pwd:pwd},
			type: 'post',

			success: function(data, textStatus, jqXHR) {
				alert("success");
				window.location.href = "home.jsp";
	
			},
			error: function(jqXHR, textStatus, errorthrown) {
				alert(textStatus);			 
			}
			
			
		});
		}
	});
	$( "#Cpwd" ).change(function() {
		  
	var password = 	$("#pwd").val();
	var Cpass = $("#Cpwd").val();
	if(password != Cpass){
		alert("Comfirmation du mot de passe incorrecte");
	}
});
	
});
	
