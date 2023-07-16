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
           Diagnostique</div>
          
          <div class="card-body">
          
          <form id="form1" name="form1" method="get" action="rech_diag_doc.jsp">
    <table width="730" height="244" border="0">
     
      
      
      
      
      
      
      <tr>
        <td><div align="left" class="style2"><strong>Diagnostique: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
                                  
                          
                           <select       class="form-control"  id="diag" name="diag">
             <option class="username" value="-1"> Diagnostique</option>
             	    <%
 
//String username=request.getParameter("username");
 
Class.forName("com.mysql.jdbc.Driver");
 
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");
 
Statement st=con.createStatement();
 
String query="select * from diag";
 
ResultSet rs=st.executeQuery(query);
 
%>
    <%
 
while(rs.next())
 
{
 

 
%>
          <option class="username" value="<%=rs.getString(1)%>"> <%=rs.getString(2)%></option>
       	<%
	}
	%>   
            </select>
            </strong></div></td>
      </tr>
	  
	  
	  
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
          <option class="username" value="<%=rs.getString(1)%>"> <%=rs.getString(2)%></option>
       	<%
	}
	%>   
            </select>
            </strong></div></td>
      </tr>
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  <tr>
        <td><div align="left" class="style2"><strong>Date Entré: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
            <input name="datee" type="date" class="form-control" id="datee"   required="required"/>
            </strong></div></td>
      </tr>
	  
  <tr>
        <td><div align="left" class="style2"><strong>Date Sortie: </strong></div></td>
        <td>
          <div align="left" class="style2"><strong>
            <input name="dates" type="date" class="form-control" id="dates"   required="required"/>
            </strong></div></td>
      </tr>
 
      <tr>
        <td><div align="left"><span class="style2"></span></div></td>
        <td><span class="style2"><strong>
          <label>          </label>
        </strong>          
            <label></label>
        </span>          <label><div align="left" class="style2"><strong>
            <input name="Submit" type="submit"   value="Recherche"  class="btn btn-primary"/>
          </strong></div>
        </label></td>
      </tr>
    </table>
  </form>
			
          
          
          
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
 
  st=con.createStatement();
 
String query5="select admission.*,doss_patient.Service,patient_list.nom,patient_list.prenom from admission,service,patient_list,doss_patient WHERE admission.id_dossier=doss_patient.id AND patient_list.id=doss_patient.id_patient";
 
  rs=st.executeQuery(query5);
 
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
