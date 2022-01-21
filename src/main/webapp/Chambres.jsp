<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Gestion des chambres </title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.theme.default.min.css">
    <link href="assets/vendor/jqvmap/css/jqvmap.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="scriptjs/chambre.js"></script>
	
</head>
<body>
<%@include file="../jsp files/header.jsp" %>
<%@include file="../jsp files/sideBar.jsp" %>






 <div class="content-body">
           
           
            <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">liste des chambres</h4>
                                 <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Ajouter chambre</button>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="display" style="min-width: 845px">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Numero</th>
                                                <th>Type</th>
                                                <th>Prix</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody id="content">
                                            
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                               <th>ID</th>
                                                <th>Numero</th>
                                                <th>Type</th>
                                                <th>Prix</th>
                                                <th>Actions</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>       
                </div>
           
          
                                    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title">Ajouter Chambre</h5>
                                                    <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                                                    </button>
                                                </div>
                                                  <form id="form1">
                                                <div class="modal-body">
                                               
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label>Numero</label>
                                                <input type="text" class="form-control" placeholder="chambre 2xxx" id="Num">
                                                <input type="hidden" class="form-control" placeholder="" id="id" value="">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Type</label>
                                                <input type="text" class="form-control" id="type">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label>Prix</label>
                                                <input type="number" class="form-control" placeholder="" id="prix">
                                            </div>
                                            
                                        </div>
                                   
                                                
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal" >Annuler</button>
                                                    <button type="submit" class="btn btn-primary"  id="add" >Enregistrer</button>
                                                </div>
                                                 </form>
                                            </div>
                                        </div>
                                    </div>
           
           
            
        </div>


<script>
 function save(){
	 
	 var num = document.getElementById("Num").value;
	 var type = document.getElementById('type').value;
	 var prix = document.getElementById('prix').value;
	 var id = document.getElementById('id').value;
	//alert(prenom);
	 $.ajax({
			url: "ChambreController",
			data: { op: "update", id: id, Num:num , Type: type,Prix: prix },
			type: 'POST',
			success: function(data, textStatus, jqXHR) {
				alert("allo!");
			},
			error: function(jqXHR, textStatus, errorThrown) {
				//console.log(textStatus);
				alert("error");
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