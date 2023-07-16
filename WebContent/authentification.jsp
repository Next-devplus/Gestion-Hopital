<%@page import="java.sql.*" %>
 
<%@page import="java.io.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>
 
<%@page import="java.sql.Statement" %> 
 
<%
String login = request.getParameter("login");
//System.out.println(login);
String password = request.getParameter("password");
String profil = request.getParameter("profil");
//System.out.println(password);
RequestDispatcher dispatcher = null;

if(Integer.parseInt(profil)==1){
  try {

	  Class.forName("com.mysql.jdbc.Driver");
	  
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gestion_stock","root","");
	  ResultSet rs;
	  Statement st=con.createStatement();
	  rs = st.executeQuery("select * from admin where login='" + login + "' and password ='" + password  + "' ");

	    
	   // String role =rs.getString(6);
	    
	   
		
	    if (rs.next()) {
	    	int id = rs.getInt(1);
	    	String NomAdmin = rs.getString(2);
	    	 
	        session.setAttribute("id_e", NomAdmin);
	         //out.println("welcome " + userid);
	        //out.println("<a href='logout.jsp'>Log out</a>");
	        response.sendRedirect("espace_admin.jsp");
	    } else {
		
	    
	   dispatcher = request.getRequestDispatcher("/login.jsp"); 
	   dispatcher.forward(request, response);
	    
	   }}

	 catch (ClassNotFoundException ea) {
	 		ea.getCause();
	 		System.out.println("Le driver JDBC pour MYSQL est introuvable");
	 	}
	       catch (SQLException ec) {
	 		ec.getCause();
	 		System.out.println("Un probleme de connexion est sourvenu, vérfier la chaine de connexion");

	       }
  
}
//------------------------------------------------------------------>
else if(Integer.parseInt(profil)==2){
		
	try {

		  Class.forName("com.mysql.jdbc.Driver");
		  
		  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gestion_stock","root","");
		  ResultSet rs;
		  Statement st=con.createStatement();
		  rs = st.executeQuery("select * from user where login='" + login + "' and pwd ='" + password  + "' and role='2' ");

		    
		   // String role =rs.getString(6);
		    
		   
			
		    if (rs.next()) {
		    	int id = rs.getInt(1);
		    	String NomAdmin = rs.getString(2);
		    	 
		        session.setAttribute("id_e", NomAdmin);
		         //out.println("welcome " + userid);
		        //out.println("<a href='logout.jsp'>Log out</a>");
		        response.sendRedirect("espace_responsable.jsp");
		    } else {
			
		    
		   dispatcher = request.getRequestDispatcher("/login.jsp"); 
		   dispatcher.forward(request, response);
		    
		   }}

		 catch (ClassNotFoundException ea) {
		 		ea.getCause();
		 		System.out.println("Le driver JDBC pour MYSQL est introuvable");
		 	}
		       catch (SQLException ec) {
		 		ec.getCause();
		 		System.out.println("Un probleme de connexion est sourvenu, vérfier la chaine de connexion");

		       }
	}
//------------------------------------------------------------------>
else if(Integer.parseInt(profil)==3){
		
	try {

		  Class.forName("com.mysql.jdbc.Driver");
		  
		  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gestion_stock","root","");
		  ResultSet rs;
		  Statement st=con.createStatement();
		  rs = st.executeQuery("select * from user where login='" + login + "' and pwd ='" + password  + "' and role='3' ");

		    
		   // String role =rs.getString(6);
		    
		   
			
		    if (rs.next()) {
		    	int id = rs.getInt(1);
		    	String NomAdmin = rs.getString(2);
		    	 
		        session.setAttribute("id_e", NomAdmin);
		         //out.println("welcome " + userid);
		        //out.println("<a href='logout.jsp'>Log out</a>");
		        response.sendRedirect("espace_directeur.jsp");
		    } else {
			
		    
		   dispatcher = request.getRequestDispatcher("/login.jsp"); 
		   dispatcher.forward(request, response);
		    
		   }}

		 catch (ClassNotFoundException ea) {
		 		ea.getCause();
		 		System.out.println("Le driver JDBC pour MYSQL est introuvable");
		 	}
		       catch (SQLException ec) {
		 		ec.getCause();
		 		System.out.println("Un probleme de connexion est sourvenu, vérfier la chaine de connexion");

		       }
	}


//------------------------------------------------------------------>
else if(Integer.parseInt(profil)==4){
		
	try {

		  Class.forName("com.mysql.jdbc.Driver");
		  
		  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gestion_stock","root","");
		  ResultSet rs;
		  Statement st=con.createStatement();
		  rs = st.executeQuery("select * from user where login='" + login + "' and pwd ='" + password  + "' and role='4' ");

		    
		   // String role =rs.getString(6);
		    
		   
			
		    if (rs.next()) {
		    	int id = rs.getInt(1);
		    	String NomAdmin = rs.getString(2);
		    	 
		        session.setAttribute("id_e", NomAdmin);
		         //out.println("welcome " + userid);
		        //out.println("<a href='logout.jsp'>Log out</a>");
		        response.sendRedirect("espace_client.jsp");
		    } else {
			
		    
		   dispatcher = request.getRequestDispatcher("/login.jsp"); 
		   dispatcher.forward(request, response);
		    
		   }}

		 catch (ClassNotFoundException ea) {
		 		ea.getCause();
		 		System.out.println("Le driver JDBC pour MYSQL est introuvable");
		 	}
		       catch (SQLException ec) {
		 		ec.getCause();
		 		System.out.println("Un probleme de connexion est sourvenu, vérfier la chaine de connexion");

		       }
	}


%>