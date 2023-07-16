  <%@ include file = "menu.jsp" %>
    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">   Modification Secritaire </a>
          </li>
      
        </ol>

        <!-- Icon Cards-->
        <div class="row">
      
          
     
        </div>

        <!-- Area Chart Example-->
        

        <!-- DataTables Example -->
        <div class="card mb-3">
          
           
        <div id="content">


	
		 
			<form id="form1" name="form1" method="get" action="/Gestion_Hopital/modif_sec">
			          <input class="form-control" type="hidden" id="id" name="id" value=" <% String id=request.getParameter("id");
                          out.print(id);
                          
                          %>"/>
    <table width="730" height="244" border="0">
      
    
      
      
       <tr>
        <td><div align="left" class="style2"><strong>Nom: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
            <input name="nom" type="text" class="form-control" id="nom"  value=" <% String nom=request.getParameter("nom");
                          out.print(nom);
                          
                          %>" required="required"/>
            </strong></div></td>
      </tr>
      
      
      
         <%
 
//String username=request.getParameter("username");
 
Class.forName("com.mysql.jdbc.Driver");
 
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");
 
Statement st=con.createStatement();
 
String query="select * from sect";
 
ResultSet rs=st.executeQuery(query);
 
%>
 
	  
	    <tr>
        <td><div align="left" class="style2"><strong>Service: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
                                  
                          
                           <select       class="form-control"  id="service" name="service">
             <option class="username" value="-1"> Service</option>
             	    <%
 
 
 
String query1="select * from service";
 
  rs=st.executeQuery(query1);
 
%>
    <%
 
while(rs.next())
 
{
 

 
%>
          <option class="username" value="<%=rs.getString(2)%>"> <%=rs.getString(2)%></option>
       	<%
	}
	%>   
            </select>
            </strong></div></td>
      </tr>
	  
	  
	  
	  <tr>
        <td><div align="left" class="style2"><strong>E-mail: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
            <input name="E-mail" type="text" class="form-control" id="E-mail" value=" <% String email=request.getParameter("email");
                          out.print(email);
                          
                          %>"  required="required"/>
            </strong></div></td>
      </tr>
	  

	  <tr>
        <td><div align="left" class="style2"><strong>Téléphone: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
            <input name="Telephone" type="text" class="form-control" id="Telephone"  value=" <% String contact=request.getParameter("contact");
                          out.print(contact);
                          
                          %>" required="required"/>
            </strong></div></td>
      </tr>
	   
	  
	<tr>
        <td><div align="left" class="style2"><strong>Login: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
            <input name="Login" type="text" class="form-control" id="Login"  value=" <% String login=request.getParameter("login");
                          out.print(login);
                          
                          %>" required="required"/>
            </strong></div></td>
      </tr>
	  
	  <tr>
        <td><div align="left" class="style2"><strong>Password: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
            <input name="Password" type="password" class="form-control" id="Password" value=" <% String pwd=request.getParameter("pwd");
                          out.print(pwd);
                          
                          %>"  required="required"/>
            </strong></div></td>
      </tr>
	  
	  
 
      <tr>
        <td><div align="left"><span class="style2"></span></div></td>
        <td><span class="style2"><strong>
          <label>          </label>
        </strong>          
            <label></label>
        </span>          <label><div align="left" class="style2"><strong>
            <input name="Submit" type="submit"   value="Modifier Secritaire"  class="btn btn-primary"/>
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
