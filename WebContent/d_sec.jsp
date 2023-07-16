 
    
    
   
    
    
    
     
      
      <%@ include file = "menusec.jsp" %>
      
      
      
      
    
    
    
    
    
    
    
    
    
    
    
    
    
   
     

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
          </li>
      
        </ol>

        <!-- Icon Cards-->
        <div class="row">
         
          <div class="col-xl-5 col-sm-6 mb-3">
            <div class="card text-white bg-warning o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-shopping-cart"></i>
                </div>
                <div class="mr-5">Nombre Patient </div>
                <br>
              <%try {

            	  Class.forName("com.mysql.jdbc.Driver");
           	   
           	   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");

                      
                      String sql = "select count(*) as s from patient_list ";
                      Statement s = conn.createStatement();
                      s.executeQuery(sql);
                       ResultSet rs=s.getResultSet();

                            while(rs.next())

                            {
                      
                      %>
                
                <h3><%out.println(rs.getString("s")); %> </h3>
                
                <%        }
                            rs.close();
                            s.close();



               }

                           catch(Exception e){
                       System.out.println("Exception is ;"+e);
                       } %>
              </div>
            
            </div>
          </div>
          <div class="col-xl-5 col-sm-6 mb-3">
            <div class="card text-white bg-secondary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-life-ring"></i>
                </div>
                <div class="mr-5">  Nombre Dossier</div>
                <br>
               <%try {

  
               	   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");

                      String sql = "select count(*) as s  from doss_patient ";
                      Statement s = conn.createStatement();
                      s.executeQuery(sql);
                       ResultSet rs=s.getResultSet();

                            while(rs.next())

                            {
                      
                      %>
                
                <h3><%out.println(rs.getString("s")); %></h3>
                
                <%        }
                            rs.close();
                            s.close();



               }

                           catch(Exception e){
                       System.out.println("Exception is ;"+e);
                       } %>
              </div>
            
            </div>
          </div>
          
          
          
          
           
             <div class="col-xl-5 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-life-ring"></i>
                </div>
                <div class="mr-5">Nombre Docteur</div>
                <br>
               <%try {

  Class.forName("com.mysql.jdbc.Driver");
            	   
	   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");

                      
                      String sql = "select count(*) as s  from doctor_list ";
                      Statement s = conn.createStatement();
                      s.executeQuery(sql);
                       ResultSet rs=s.getResultSet();

                            while(rs.next())

                            {
                      
                      %>
                
                <h3><%out.println(rs.getString("s")); %></h3>
                
                <%        }
                            rs.close();
                            s.close();



               }

                           catch(Exception e){
                       System.out.println("Exception is ;"+e);
                       } %>
              </div>
            
            </div>
          </div>
          
             <div class="col-xl-5 col-sm-6 mb-3">
            <div class="card text-white bg-success o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-life-ring"></i>
                </div>
                <div class="mr-5">Nombre Service</div>
                <br>
               <%try {

  Class.forName("com.mysql.jdbc.Driver");
            	   
            	   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");

                      
                      String sql = "select count(*) as s  from service ";
                      Statement s = conn.createStatement();
                      s.executeQuery(sql);
                       ResultSet rs=s.getResultSet();

                            while(rs.next())

                            {
                      
                      %>
                
                <h3><%out.println(rs.getString("s")); %></h3>
                
                <%        }
                            rs.close();
                            s.close();



               }

                           catch(Exception e){
                       System.out.println("Exception is ;"+e);
                       } %>
              </div>
            
            </div>
          </div>
          
             
                <div class="col-xl-5 col-sm-6 mb-3">
            <div class="card text-white bg-danger o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-life-ring"></i>
                </div>
                <div class="mr-5">Nombre Diagnostique</div>
                <br>
               <%try {

  Class.forName("com.mysql.jdbc.Driver");
            	   
	   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");

                      
                      String sql = "select count(*) as s  from diag ";
                      Statement s = conn.createStatement();
                      s.executeQuery(sql);
                       ResultSet rs=s.getResultSet();

                            while(rs.next())

                            {
                      
                      %>
                
                <h3><%out.println(rs.getString("s")); %></h3>
                
                <%        }
                            rs.close();
                            s.close();



               }

                           catch(Exception e){
                       System.out.println("Exception is ;"+e);
                       } %>
              </div>
            
            </div>
          </div>  
             
             
                  
             
                <div class="col-xl-5 col-sm-6 mb-3">
            <div class="card text-white bg-primary o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-life-ring"></i>
                </div>
                <div class="mr-5">Nombre Admission</div>
                <br>
               <%try {

  Class.forName("com.mysql.jdbc.Driver");
            	   
	   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");

                      
                      String sql = "select count(*) as s  from admission ";
                      Statement s = conn.createStatement();
                      s.executeQuery(sql);
                       ResultSet rs=s.getResultSet();

                            while(rs.next())

                            {
                      
                      %>
                
                <h3><%out.println(rs.getString("s")); %></h3>
                
                <%        }
                            rs.close();
                            s.close();



               }

                           catch(Exception e){
                       System.out.println("Exception is ;"+e);
                       } %>
              </div>
            
            </div>
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
