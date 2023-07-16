 <%@ include file = "menu.jsp" %>
   

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
            Liste Users</div>
            <br>
            <a style="width:150px;"class="btn btn-info" href="ajout_sect.jsp" role="button">Ajouter Secritaire</a>
          <hr>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                   <thead>
    <tr>
        <th>ID</th>
        <th>Nom</th>
           <th>	Service</th>
            <th>E-mail</th>
    
         
        <th>Téléphone</th>
          <th>login</th>
            <th>pwd</th>
           
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
	    <%
 
//String username=request.getParameter("username");
 
Class.forName("com.mysql.jdbc.Driver");
 
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");
 
Statement st=con.createStatement();
 
String query="select * from sect";
 
ResultSet rs=st.executeQuery(query);
 
%>
    <%
 
while(rs.next())
 
{
	int id = rs.getInt(1);

 
%>
    <tr>   <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td class="center"><%=rs.getString(3)%></td>
         <td class="center"><%=rs.getString(4)%></td>
      
        <td class="center">
            <span class="label-success label label-default"><%=rs.getString(5)%></span>
        </td>
       
         <td class="center">
            <span class="label-success label label-default"><%=rs.getString(8)%></span>
        </td>
         <td class="center">
            <span class="label-success label label-default"><%=rs.getString(9)%></span>
        </td>
        
        
        
        
      
                                            
        
        
        
        
        
        
        
        
        
        
        
        
        <td class="center">
           
                 
              
            </a>
            <a class="btn btn-info" href="modif_sec.jsp?id=<%=rs.getString(1)%>&nom=<%=rs.getString(2)%>&email=<%=rs.getString(4)%>&contact=<%=rs.getString(5)%>&login=<%=rs.getString(8)%>&pwd=<%=rs.getString(9)%>">
                <i class="fa fa-edit"></i>
                 
            </a>
            <a class="btn btn-danger" href="/Gestion_Hopital/sup_sec?id=<%=rs.getString(1)%>">
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
