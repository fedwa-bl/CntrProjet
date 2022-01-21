$(document).ready(function() {
	$.ajax({
		url: "ClientsController",
		data: { op: "load" },
		type: 'POST',

		success: function(data, textStatus, jqXHR) {
			
			//var data1 =data[0] , data2 = data[1];
			//alert(data1);
			console.log(JSON.stringify(data))
			
			remplir(data);
			remplire2(data);
			
		},
		error: function(jqXHR, textStatus, errorthrown) {
			alert(textStatus);
		
		}

	});
	$("#add").click(function() {
		var nom = $("#Nom").val();
		var prenom = $("#Prenom").val();
		 

		console.log(nom + " " + prenom + " " );
		$.ajax({
			url: "ClientsController",
			data: { Nom:nom , Prenom:prenom },
			type: 'post',

			success: function(data, textStatus, jqXHR) {
				console.log(JSON.stringify(data))
				remplir(data);
			},
			error: function(jqXHR, textStatus, errorthrown) {
				alert(textStatus);
				 

			}

		});

	});

	$("#content").on("click", ".delete", function() {
		//alert($(this).attr('val'));
		
		var id = $(this).closest('tr').find('td').eq(0).text();
		$.ajax({
			url: "ClientsController",
			data: { op: "delete", id: id },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				remplir(data);
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(textStatus);
			}
		});
	});
	$("#content2").on("click", ".delete", function() {
		//alert($(this).attr('val'));
		
		var id = $(this).closest('tr').find('td').eq(0).text();
		$.ajax({
			url: "ClientsController",
			data: { op: "delete", id: id },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				remplir(data);
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(textStatus);
			}
		});
	});
	$('.modal form').on('.submit', function(event) {
    event.preventDefault();
    
   
    $.ajax({
        url:ClientsController,
        type: 'POST',
      	data: { op: "accept", id: id },
        contentType: 'application/json',
        beforeSend: function(xhr){xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded")},
        success: function(data) {
            console.log(data.success);
            if(data.success===1) {
                // loop through all modal's and call the Bootstrap
                // modal jQuery extension's 'hide' method
                $('.modal').each(function(){
                    $(this).modal('hide');
                });
                console.log('success');
            } else {
                console.log('failure');
            }
        }
    });
});
	$("#save").on("click", ".update", function() {
	
 		var etat = $("#Etat").val();
 		var phone = $("#Phone").val();
 		var nom = $("#Nom").val();
		var prenom = $("#Prenom").val();
		var id = $("id").val();
		$.ajax({
			url: "ClientsController",
			data: { op: "update", id: id, Nom:nom , Prenom: prenom,Etat: etat , Phone: phone },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				remplir(data);
				remplire2(data);
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(textStatus);
			}
		});
	});
	$("#content").on("click",".mode", function() {
		//alert("allo");
 		
 		 $("#Etat").val($(this).closest('tr').find('td').eq(4).text());
 		$("#Phone").val($(this).closest('tr').find('td').eq(3).text());
 		 $("#Nom").val($(this).closest('tr').find('td').eq(1).text());
 		// 	 $("#Nom").val("fedwa");
		 $("#Prenom").val($(this).closest('tr').find('td').eq(2).text());
		$("#id").val($(this).closest('tr').find('td').eq(0).text());
		
		
		
		var content = "<form><div class='form-row'><div class='form-group col-md-6'><label>Nom</label><input type='text' class='form-control' value  = '"+$(this).closest('tr').find('td').eq(1).text()+"' id='Nom'><input type='hidden' class='form-control' placeholder='' id='id' value='"+$(this).closest('tr').find('td').eq(0).text()+"'></div><div class='form-group col-md-6'><label>Prenom</label><input type='text' class='form-control' id='Prenom' value = '"+$(this).closest('tr').find('td').eq(2).text()+"' ></div><div class='form-group col-md-6'><label>Numero telephone</label><input type='text' class='form-control' id='Phone'  value= '"+$(this).closest('tr').find('td').eq(3).text()+"'></div><div class='form-group col-md-6'><label>etat</label><input type='number' class='form-control' placeholder='' id='Etat' value='"+$(this).closest('tr').find('td').eq(4).text()+"'></div> </div></form>'";
		
		//$('#Bcontent').html(content);
		//$('#clientM').modal('show');
			
	});
	$("#content2").on("click", ".accept", function() {
 		
		
		var id = $(this).closest('tr').find('td').eq(0).text();
		//alert(id);
		
		$.ajax({
			url: "ClientsController",
			data: { op: "accept", id: id },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				remplir(data);
				remplire2(data);
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(textStatus);
			}
		});
	});
	function remplir(data) {
		var ligne = "";
		for (var i = 0; i < data.length; i++) {
			if( data[i].etat == "1"){
			ligne += "<tr><td>" + data[i].id  +"</td><td>" + data[i].nom  +"</td><td>" + data[i].prenom + "</td><td>" + data[i].numtele +"</td><td>" + data[i].etat + "</td><td><button type='button'  class='btn btn-danger delete' val='" + data["id"] + "'>Supprimer</button>  <button type='button' class='btn btn-warning mode '  data-toggle='modal' data-target='.bd-example-modal-lg' >Modifier</button></td></tr>";
		}}
		$("#content").html(ligne);
	}
	function remplire2(data) {
		var ligne = "";
		for (var i = 0; i < data.length; i++) {
			if( data[i].etat == "0"){
			ligne += "<tr><td>" + data[i].id  +"</td><td>" + data[i].nom  +"</td><td>" + data[i].prenom + "</td><td>" + data[i].numtele +"</td><td>" + data[i].etat + "</td><td><button type='button'  class='btn btn-success accept' val='" + data["id"] + "'>Accepter</button> <button type='button'   class='btn btn-warning delete'>Refuser</button></td></tr>";
		}}
		$("#content2").html(ligne);
	}
});