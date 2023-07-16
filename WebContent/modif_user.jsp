  <%@ include file = "menu.jsp" %>
    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">   Modification User </a>
          </li>
      
        </ol>

        <!-- Icon Cards-->
        <div class="row">
      
          
     
        </div>

        <!-- Area Chart Example-->
        

        <!-- DataTables Example -->
        <div class="card mb-3">
          
           
        <div id="content">


	
		 
			<form id="form1" name="form1" method="get" action="/Gestion_Hopital/modifier_user">
    <table width="730" height="244" border="0">
      
    
          <div class="form-group">
                                            
                                                               <input class="form-control" type="hidden" id="id" name="id" value=" <% String id=request.getParameter("id");
                          out.print(id);
                          
                          %>"/>
                                        </div>
      
       <tr>
        <td><div align="left" class="style2"><strong>Nom: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
            <input name="textfield" type="text" class="form-control" id="inputSuccess1"  value=" <% String nom=request.getParameter("nom");
                          out.print(nom);
                          
                          %>" required="required"/>
            </strong></div></td>
      </tr>
      
      
      
      
      
      
      <tr>
        <td><div align="left" class="style2"><strong>Prenom: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
            <input name="textfield2" type="text" class="form-control" id="inputSuccess1"  value=" <% String prenom=request.getParameter("prenom");
                          out.print(prenom);
                          
                          %>" required="required"/>
            </strong></div></td>
      </tr>
	  
	  
	  <tr>
        <td><div align="left" class="style2"><strong>Téléphone: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
            <input name="textfield3" type="text" class="form-control" id="inputSuccess1" value=" <% String gsm=request.getParameter("gsm");
                          out.print(gsm);
                          
                          %>"  required="required"/>
            </strong></div></td>
      </tr>
	  

	 
	   
	  
	<tr>
        <td><div align="left" class="style2"><strong>Login: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
            <input name="textfield4" type="text" class="form-control" id="inputSuccess1"  value=" <% String login=request.getParameter("login");
                          out.print(login);
                          
                          %>" required="required"/>
            </strong></div></td>
      </tr>
	  
	  <tr>
        <td><div align="left" class="style2"><strong>Password: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
            <input name="textfield5" type="text" class="form-control" id="inputSuccess1"  value=" <% String pwd=request.getParameter("pwd");
                          out.print(pwd);
                          
                          %>" required="required"/>
            </strong></div></td>
      </tr>
	  
 
      <tr>
        <td><div align="left"><span class="style2"></span></div></td>
        <td><span class="style2"><strong>
          <label>          </label>
        </strong>          
            <label></label>
        </span>          <label><div align="left" class="style2"><strong>
            <input name="Submit" type="submit"   value="Modifier User"  class="btn btn-primary"/>
          </strong></div>
        </label></td>
      </tr>
    </table>
  </form>
			
				
			
			
		 

          </div>
         
        </div>

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->
  

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.jsp">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/chart.js/Chart.min.js"></script>
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="js/demo/datatables-demo.js"></script>
  <script src="js/demo/chart-area-demo.js"></script>

</body>

</html>
