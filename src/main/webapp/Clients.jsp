<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Gestion des clients </title>
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.theme.default.min.css">
    <link href="assets/vendor/jqvmap/css/jqvmap.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
	<script type="text/javascript" src="scriptjs/Clients.js"></script>
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
                                <h4 class="card-title">liste des Clients</h4>
                                  </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="display" style="min-width: 845px">
                                        <thead>
                                            <tr>
                                            <th>Id</th>
                                                <th>Nom</th>
                                                <th>Prenom</th>
                                                <th>telephone</th>
                                                <th>Etat</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody id="content">
                                            
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                            	<th>Id</th>
                                                <th>Nom</th>
                                                <th>Prenom</th>
                                                <th>telephone</th>
                                                <th>Etat</th>
                                                <th>Actions</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>       
                </div>
                
                            <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">demandes d'activation</h4>
                                  </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="display" style="min-width: 845px">
                                        <thead>
                                            <tr>
                                            	<th>id</th>
                                                <th>Nom</th>
                                                <th>Prenom</th>
                                                <th>telephone</th>
                                                <th>Etat</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody id="content2">
                                            
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                            	<th>id</th>
                                                <th>Nom</th>
                                                <th>Prenom</th>
                                                <th>telephone</th>
                                                <th>Etat</th>
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
                                                <div class="modal-body" id ="Bcontent">
                                                 <form>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label>Nom</label>
                                                <input type="text" class="form-control" placeholder="" id="Nom">
                                                 <input type="hidden" class="form-control" placeholder="" id="id" value="">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Prenom</label>
                                                <input type="text" class="form-control" id="Prenom" >
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Numéro téléphone</label>
                                                <input type="text" class="form-control" id="Phone" >
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>etat</label>
                                                <input type="number" class="form-control" placeholder="" id="Etat">
                                            </div>
                                            
                                        </div>
                                    </form>
                                                
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                                                    <button type="button" class="btn btn-primary" onclick="save()">enregistrer</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
           
           
            
        </div>















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
    
    
 <script>
 
 function save(){
	 
	 var nom = document.getElementById("Nom").value;
	 var prenom = document.getElementById('Prenom').value;
	 var phone = document.getElementById('Phone').value;
	 var etat = document.getElementById('Etat').value;
	 var id = document.getElementById('id').value;
	//alert(prenom);
	 $.ajax({
			url: "ClientsController",
			data: { op: "update", id: id, Nom:nom , Prenom: prenom,Etat: etat , Phone: phone },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(textStatus);
				
			}
		});
	 
 }
 
 </script>
</body>
</html>