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
		var num = $("#Num").val();
		var Prix = $("#prix").val();
		var Type = $("#type").val();

		//console.log(Code + " " + Capacite + " " + Type);
		$.ajax({
			url: "ChambreController",
			data: { id: id, Num:num , Type: type,Prix: prix },
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
$("#form1").submit(function() {
		 var num = $("#Num").val();
		var Prix = $("#prix").val();
		var Type = $("#type").val();
				//alert(type);
				$.ajax({
					url: "ChambreController",
					data: { op: "add", Num:num , Type: Type,Prix: Prix },
					type: 'POST',
					success: function(data, textStatus, jqXHR) {
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
			url: "ChambreController",
			data: { op: "delete", id: id },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				remplir(data);
				alert("Chambre supprimée");
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(textStatus);
			}
		});
	});
	$("#content").on("click", ".update", function() {
		//alert($(this).attr('val'));
		var num = $("#Num").val();
		var prix = $("#prix").val();
		var type = $("#type").val();
		var id = $(this).closest('tr').find('td').eq(0).text();
		$.ajax({
			url: "ChambreController",
			data: { op: "update", id: id, Num: num, prix: prix, Type: type },
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
 		 $("#Num").val($(this).closest('tr').find('td').eq(1).text());
 		// 	 $("#Nom").val("fedwa");
		 $("#type").val($(this).closest('tr').find('td').eq(2).text());
		$("#id").val($(this).closest('tr').find('td').eq(0).text());
		var content = "<form><div class='form-row'><div class='form-group col-md-6'><label>Numero</label><input type='text' class='form-control' value  = '"+$(this).closest('tr').find('td').eq(1).text()+"' id='Num'><input type='hidden' class='form-control' placeholder='' id='id' value='"+$(this).closest('tr').find('td').eq(0).text()+"'></div><div class='form-group col-md-6'><label>type</label><input type='text' class='form-control' id='type' value = '"+$(this).closest('tr').find('td').eq(2).text()+"' ></div><div class='form-group col-md-6'><label>prix</label><input type='text' class='form-control' id='Phone'  value= '"+$(this).closest('tr').find('td').eq(3).text()+"'></div> </div></form>'";
	
			
	});
	function remplir(data) {
		var ligne = "";
		for (var i = 0; i < data.length; i++) {
			ligne += "<tr><td>" + data[i].id + "</td><td>" + data[i].numero + "</td><td>" + data[i].type + "</td><td>" + data[i].prix + "</td><td><button type='button'  class='btn btn-danger delete' val='" + data["id"] + "'>Supprimer</button>   <button type='button' class='btn btn-warning mode '  data-toggle='modal' data-target='.bd-example-modal-lg' >Modifier</button></td></tr>";
		}
		$("#content").html(ligne);
	}
});