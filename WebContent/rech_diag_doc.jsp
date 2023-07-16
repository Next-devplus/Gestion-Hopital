 <%@ include file = "menudoc.jsp" %>
   

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
      

        <!-- Icon Cards-->
        <div class="row">
      
          
     
        </div>

        <!-- Area Chart Example-->
        

        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
        Resultat Recherche   Diagnostique</div>
          
          <div class="card-body">
          
        
          
          
          
            <div class="table-responsive">
               <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                   <thead>
    <tr>
        <th>admission</th>
         <th>dossier</th>
    
         
        <th>date_entre</th>
          <th>date sortie</th>
            <th>service</th>
                        <th>Nom</th>
                        <th>Prénom</th>
            
     
    </tr>
    </thead>
    <tbody>
	    <%
		String diag=request.getParameter("diag");
  		String service=request.getParameter("service");
  		String datee=request.getParameter("datee");

  		String dates=request.getParameter("dates");

  	 
	    Class.forName("com.mysql.jdbc.Driver");
	    
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");
	     
	    Statement st=con.createStatement();
  st=con.createStatement();
 
String query5="select admission.*,doss_patient.Service,patient_list.nom,patient_list.prenom from admission,service,patient_list,doss_patient,diag WHERE admission.id_dossier=doss_patient.id and patient_list.id=doss_patient.id_patient and    diag.id='"+diag+"' and service.id='"+service+"' and admission.date_ad='"+datee+"' and admission.date_sortie='"+dates+"'";
 System.out.println(query5);
ResultSet rs=st.executeQuery(query5);
 
%>
    <%
 
while(rs.next())
 
{
	int id = rs.getInt(1);

 
%>
    <tr>   <td><%=rs.getString(1)%></td>
      
        <td class="center"><%=rs.getString(2)%></td>
        <td class="center"><%=rs.getString(4)%></td>
        <td class="center">
            <span class="label-success label label-default"><%=rs.getString(5)%></span>
        </td>
         <td class="center">
            <span class="label-success label label-default"><%=rs.getString(7)%></span>
        </td>
        
        <td class="center">
            <span class="label-success label label-default"><%=rs.getString(8)%></span>
        </td>
         <td class="center">
            <span class="label-success label label-default"><%=rs.getString(9)%></span>
        </td>
    </tr>
	
	<%
	}
	%>

    </tbody>
    </table>
            </div>
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

 

</body>

</html>
