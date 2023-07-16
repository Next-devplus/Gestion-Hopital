 <%@ include file = "menusec.jsp" %>
   

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
            Liste admission</div>
            <br>
            </a>
          <hr>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                   <thead>
    <tr>
        <th>ID</th>
                <th>Dossier</th>
        
        <th>Patient</th>
        <th>Date Admission</th>
    
         
        <th>Date Sortie</th>
       
                <th>Resumé </th>
                     <th>Action </th>
     
    </tr>
    </thead>
    <tbody>
	    <%
 
//String username=request.getParameter("username");
 
Class.forName("com.mysql.jdbc.Driver");
 
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");
 
Statement st=con.createStatement();
 
String query="select admission.*,patient_list.nom from admission,patient_list where admission.id_patient=patient_list.id";
 
ResultSet rs=st.executeQuery(query);
 
%>
    <%
 
while(rs.next())
 
{
	int id = rs.getInt(1);

 
%>
    <tr>   <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td class="center"><%=rs.getString(7)%></td>
        <td class="center"><%=rs.getString(4)%></td>
        <td class="center">
            <span class="label-success label label-default"><%=rs.getString(5)%></span>
        </td>
         <td class="center">
            <span class="label-success label label-default"><%=rs.getString(6)%></span>
        </td>
        
          <td class="center">
      
            <a class="btn btn-danger" href="/Gestion_Hopital/sup_admission?id=<%=rs.getString(1)%>">
              <i class="fa fa-trash"></i>
                 
            </a>
            
           
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
