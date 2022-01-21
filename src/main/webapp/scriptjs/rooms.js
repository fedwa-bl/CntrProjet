$(document).ready(function() {
	$.ajax({
		url: "ChambreController",
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
		var dateDebut = $("#datedebut").val();
		var dateFin = $("#datefin").val();
	
		var id_chambre = $("#chambre").val();
		var idClient = $("#idClient").val();
		var id = $("#id").val();
				//alert(id);
				$.ajax({
					url: "ReservationController",
					data: { DateDebut: dateDebut, DateFin: dateFin,ID_chambre:id_chambre,ID_client:8 },
					type: 'POST',
					success: function(data, textStatus, jqXHR) {
					alert("reservation effectuee ");
					},
					error: function(jqXHR, textStatus, errorthrown) {
					alert(textStatus);
					}
					});
			});
	$("#content").on("click", ".update", function() {
		var dateDebut = $("#dateDebut").val();
		var dateFin = $("#dateFin").val();
		var prix = $("#prix").val();
		var id_chambre = $("#id_chambre").val();
		var idClient = $("#idClient").val();
		var id = $(this).closest('tr').find('td').eq(0).text();
		$.ajax({
			url: "ReservationController",
			data: { op: "update", id: id, DateDebut: dateDebut, DateFin: dateFin,Prix:prix,ID_chambre:id_chambre,ID_Client:idClient },
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
 		 $("#prix").val($(this).closest('tr').find('td').eq(3).text());
 		
 		 $("#idClient").val($(this).closest('tr').find('td').eq(5).text());
 		$("#id_chambre").val($(this).closest('tr').find('td').eq(4).text());
 		 $("#dateDebut").val($(this).closest('tr').find('td').eq(1).text());
 		// 	 $("#Nom").val("fedwa");
		 $("#dateFin").val($(this).closest('tr').find('td').eq(2).text());
		$("#id").val($(this).closest('tr').find('td').eq(0).text());
		
		
		
		var content = "<form><div class='form-row'><div class='form-group col-md-6'><label>Date debut</label><input type='date' class='form-control' value  = '"+$(this).closest('tr').find('td').eq(1).text()+"' id='dateDebut'><input type='hidden' class='form-control' placeholder='' id='id' value='"+$(this).closest('tr').find('td').eq(0).text()+"'></div><div class='form-group col-md-6'><label>Date fin</label><input type='date' class='form-control' id='dateFin' value = '"+$(this).closest('tr').find('td').eq(2).text()+"' ></div><div class='form-group col-md-6'><label>ID chambre</label><input type='text' class='form-control' id='id_chambre'  value= '"+$(this).closest('tr').find('td').eq(4).text()+"'></div><div class='form-group col-md-6'><label>ID client</label><input type='number' class='form-control' placeholder='' id='idClient' value='"+$(this).closest('tr').find('td').eq(5).text()+"'></div><div class='form-group col-md-6'><label>Prix</label><input type='text' class='form-control' value  = '"+$(this).closest('tr').find('td').eq(3).text()+"' id='prix'> </div></form>'";
		
		//$('#Bcontent').html(content);
		//$('#clientM').modal('show');
			
	});	
	
	  function reserver(id){
    	 
    	 document.getElementById("chambre").value = id;
     }
	function remplir(data) {
		var ligne = "";
		for (var i = 0; i < data.length; i++) {
			ligne += " <div class='container'><div class='rooms-page-item'><div class='row'><div class='col-lg-6'><div class='room-pic-slider owl-carousel'><div class='single-room-pic'><img src='assets2/img/room/rooms-1.jpg' alt=''></div><div class='single-room-pic'><img src='assets2/img/room/rooms-2.jpg' alt=''></div></div></div><div class='col-lg-6'><div class='room-text'><div class='room-title'><h2>"+data[i].type+"  </h2></div><div class='room-title'><h2> Numero "+data[i].numero+"</h2><div class='room-price'><h2>"+data[i].prix+"$</h2></div></div><div class='room-desc'><p>Make your reservation now!</p></div><div class='room-features'><div class='room-info'><i class='flaticon-019-television'></i><span>Smart TV</span></div><div class='room-info'><i class='flaticon-029-wifi'></i><span>High Wi-fii</span></div><div class='room-info'><i class='flaticon-003-air-conditioner'></i><span>AC</span></div><div class='room-info'><i class='flaticon-036-parking'></i><span>Parking</span></div><div class='room-info last'><i class='flaticon-007-swimming-pool'></i><span>Pool</span></div></div><a href='#reserver' onclick="+reserver(data[i].id)+">Reserver <i class='lnr lnr-arrow-right'></i></a></div></div></div></div></div>";
			}
		$("#section").html(ligne);
	}
});