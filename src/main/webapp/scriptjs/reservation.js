$(document).ready(function() {
	$.ajax({
		url: "ReservationController",
		data: { op: "load" },
		type: 'post',

		success: function(data, textStatus, jqXHR) {
			console.log(JSON.stringify(data))
			remplir(data);
		},
		error: function(jqXHR, textStatus, errorthrown) {
			alert(textStatus);
			alert(textStatus);

		}

	});
	$("#add").click(function() {
		var dateDebut = $("#dateDebut").val();
		var dateFin = $("#dateFin").val();


		console.log(HeureFin + " " + HeureDebut + " ");
		$.ajax({
			url: "ReservationController",
			data: { HeureDebut: HeureDebut, HeureFin: HeureFin },
			type: 'post',

			success: function(data, textStatus, jqXHR) {
				console.log(JSON.stringify(data))
				remplir(data);
			},
			error: function(jqXHR, textStatus, errorthrown) {
				alert(textStatus);
				alert(textStatus);

			}

		});

	});

	$("#content").on("click", ".delete", function() {
		//alert($(this).attr('val'));
		var id = $(this).closest('tr').find('td').eq(0).text();
		$.ajax({
			url: "ReservationController",
			data: { op: "delete", id: id },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				alert("reservation supprimée");
				remplir(data);
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(textStatus);
			}
		});
	});
	$("#form").submit(function() {
		 var dateDebut = $("#dateDebut").val();
		var dateFin = $("#dateFin").val();
		//var prix = $("#prix").val();
		var id_chambre = $("#id_chambre").val();
		var idClient = $("#idClient").val();
		var id = $("#id").val();
				//alert(id);
				$.ajax({
					url: "ReservationController",
					data: { op: "update", id: id, DateDebut: dateDebut, DateFin: dateFin,ID_chambre:id_chambre,ID_client:idClient },
					type: 'POST',
					success: function(data, textStatus, jqXHR) {
					remplir(data);
					},
					error: function(jqXHR, textStatus, errorthrown) {
					alert(textStatus);
					}
					});
			});
	$("#content").on("click", ".update", function() {
		var dateDebut = $("#dateDebut").val();
		var dateFin = $("#dateFin").val();
		//var prix = $("#prix").val();
		var id_chambre = $("#id_chambre").val();
		var idClient = $("#idClient").val();
		var id = $(this).closest('tr').find('td').eq(0).text();
		$.ajax({
			url: "ReservationController",
			data: { op: "update", id: id, DateDebut: dateDebut, DateFin: dateFin,ID_chambre:id_chambre,ID_Client:idClient },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				remplir(data);
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(textStatus);
			}
		});
	});
	$("#content").on("click",".mode", function() {
		//alert("allo");
 		// $("#prix").val($(this).closest('tr').find('td').eq(3).text());
 		
 		 $("#idClient").val($(this).closest('tr').find('td').eq(4).text());
 		$("#id_chambre").val($(this).closest('tr').find('td').eq(3).text());
 		 $("#dateDebut").val($(this).closest('tr').find('td').eq(1).text());
 		// 	 $("#Nom").val("fedwa");
		 $("#dateFin").val($(this).closest('tr').find('td').eq(2).text());
		$("#id").val($(this).closest('tr').find('td').eq(0).text());
		
		
		
		var content = "<form><div class='form-row'><div class='form-group col-md-6'><label>Date debut</label><input type='date' class='form-control' value  = '"+$(this).closest('tr').find('td').eq(1).text()+"' id='dateDebut'><input type='hidden' class='form-control' placeholder='' id='id' value='"+$(this).closest('tr').find('td').eq(0).text()+"'></div><div class='form-group col-md-6'><label>Date fin</label><input type='date' class='form-control' id='dateFin' value = '"+$(this).closest('tr').find('td').eq(2).text()+"' ></div><div class='form-group col-md-6'><label>ID chambre</label><input type='text' class='form-control' id='id_chambre'  value= '"+$(this).closest('tr').find('td').eq(3).text()+"'></div><div class='form-group col-md-6'><label>ID client</label><input type='number' class='form-control' placeholder='' id='idClient' value='"+$(this).closest('tr').find('td').eq(4).text()+"'></div></form>'";
		
		//$('#Bcontent').html(content);
		//$('#clientM').modal('show');
			
	});
	function remplir(data) {
		var ligne = "";
		for (var i = 0; i < data.length; i++) {
			ligne += "<tr><td>" + data[i].id + "</td><td>" + data[i].dateDebut + "</td><td>" + data[i].dateFin + "</td><td>" + data[i].numero + "</td><td>" + data[i].id_client +"</td><td><button type='button'  class='btn btn-danger delete' val='" + data[i].id + "'>Supprimer</button><button type='button' class='btn btn-warning mode '  data-toggle='modal' data-target='.bd-example-modal-lg' >modifier</button></td></tr>";
		}
		$("#content").html(ligne);
	}
});