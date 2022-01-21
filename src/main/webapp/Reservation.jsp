<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Gestion des reservations </title>
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.theme.default.min.css">
    <link href="assets/vendor/jqvmap/css/jqvmap.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
	<script type="text/javascript" src="scriptjs/reservation.js"></script>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	
</head>
<body>
<%@include file="jsp files/header.jsp" %>
<%@include file="jsp files/sideBar.jsp" %>






 <div class="content-body">
           
           
            <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">liste des Reservations</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="display" style="min-width: 845px">
                                        <thead>
                                            <tr>
                                                <th>ID </th>
                                                <th>Date debut</th>
                                                <th>Date fin</th>
                                                <th>Numero Chambre</th>
                                                <th>ID_client</th>
                                                 <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody id="content">
                                            
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>ID </th>
                                                <th>Date debut</th>
                                                <th>Date fin</th>
                                                <th>Numero Chambre</th>
                                                <th>ID_client</th>
                                                 <th>Actions</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>       
                </div>
           <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true" id="clientM">
                                        <div class="modal-dialog modal-lg" >
                                            <div class="modal-content" >
                                            <form id="form">
                                                <div class="modal-body" id ="Bcontent">
                                                 
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                               <div class="form-group col-md-6">
                                                <label>Date debut</label>
                                                <input type="text" class="form-control" id="dateDebut">
                                                <input type="hidden" class="form-control" placeholder="" id="id" value="">
                                                
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Date Fin</label>
                                                <input type="text" class="form-control" id="dateFin">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Numero chambre</label>
                                                <input type="text" class="form-control" id="id_chambre" >
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>ID_client</label>
                                                <input type="text" class="form-control" id="idClient">
                                            </div>
                                            </div>
                                            
                                        </div>
                                    
                                                
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                                                    <button type="submit" class="btn btn-primary">enregistrer</button>
                                                </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
          
 
            
        </div>
 <script>       
 function save(){
	 
	 var dd = document.getElementById("dateDebut").value;
	 var df = document.getElementById('dateFin').value;
	 var id_chambre = document.getElementById('id_chambre').value;
	 var idClient = document.getElementById('idClient').value;
	 var prix = document.getElementById('prix').value;
	//alert(prenom);
	 $.ajax({
			url: "ReservationController",
			data: { op: "update", id: id, DateDebut: dd, DateFin: df,Prix:prix,id_chambre:id_chambre,idClient:idClient},
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				alert("allo");
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(textStatus);
				
			}
		});
	 
 }
 
 </script>
<%@include file="jsp files/footer.jsp" %>

 <!-- Required vendors -->
    <script src="assets/vendor/global/global.min.js"></script>
    <script src="assets/js/quixnav-init.js"></script>
    <script src="assets/js/custom.min.js"></script>
     <!-- Datatable -->
    <script src="assets/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="assets/js/plugins-init/datatables.init.js"></script>
    <script src="assets/vendor/jqvmap/js/jquery.vmap.min.js"></script>
    <script src="assets/vendor/jqvmap/js/jquery.vmap.usa.js"></script>
    <script src="assets/vendor/jquery.counterup/jquery.counterup.min.js"></script>
	<script src="assets/vendor/flot/jquery.flot.js"></script>
    <script src="assets/vendor/flot/jquery.flot.resize.js"></script>

 
     <script type="text/javascript" src="scriptjs/jquery-3.3.1.min.js"></script>
    
    
 
</body>
</html>