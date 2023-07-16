package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class authentification
 */
@WebServlet("/authentification")
public class authentification extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public authentification() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null; 
	   	 
	 	   
	  	  try {

	  		Class.forName("com.mysql.jdbc.Driver");
	  		 
	  		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");
	  		 
	  		Statement st=con.createStatement();
	  
	  	                       //int id=Integer.parseInt(request.getParameter("id"));
	  	                       String username=request.getParameter("login");
	  	                       String password=request.getParameter("password");
	  	                     String profil=request.getParameter("profil");
	  	                     ResultSet rs;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	  		  	   	       if (Integer.parseInt(profil)==1) {
	  		  	   	    	   String sql="select * from user where login='" + username + "' and pwd='" +password + "' and role='" + profil +"'";
	  		  	   		System.out.println(sql);

	  	   	            rs = st.executeQuery(sql);
	  	   	       if (rs.next()) {
	  	   	    	  HttpSession s = request.getSession(true);
		                s.setAttribute("userid", profil);
		                String id = rs.getString(1);
		                s.setAttribute("code", id);
		              response.sendRedirect("d_admin.jsp");
		            } } 
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	  		  	   	   if (Integer.parseInt(profil)==2) {
	  		  	   		   	rs = st.executeQuery("select * from doctor_list where login='" + username + "' and pwd='" +password + "' and role='" + profil +"'");
	  		  	   		if (rs.next()) {
		  	   	    	   HttpSession s = request.getSession(true);
			                s.setAttribute("userid", profil);
			                String id = rs.getString(1);
			                s.setAttribute("code", id);
			             response.sendRedirect("d_doc.jsp");
			           }  }        
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	 / 		  	   	       
	  		     	   if (Integer.parseInt(profil)==3) {
	  		  	   		   	rs = st.executeQuery("select * from doctor_list where login='" + username + "' and pwd='" +password + "' and role='" + profil +"'");
	  		  	   		if (rs.next()) {
		  	   	    	   HttpSession s = request.getSession(true);
			                s.setAttribute("userid", profil);
			                String id = rs.getString(1);
			                s.setAttribute("code", id);
			             response.sendRedirect("d_chef.jsp");
			           }  } 	  		  	   	       
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	 / 		  	   	       
	  		     	 if (Integer.parseInt(profil)==4) {
		  	   	            rs = st.executeQuery("select * from sect where login='" + username + "' and pwd='" +password + "' and role='" + profil +"'");
	  		  	   		   	if (rs.next()) {
		  	   	    	   HttpSession s = request.getSession(true);
			                s.setAttribute("userid", profil);
			                String id = rs.getString(1);
			                s.setAttribute("code", id);
			             response.sendRedirect("d_sec.jsp");
			           }  } 	  		  	   	       
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	 / 		  	   	       
	  		  	   	         		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  		  	   	       
	  	                         }

	  	                       catch (ClassNotFoundException e) {
	  	                       		e.getCause();
	  	                       		System.out.println("Le driver JDBC pour MYSQL est introuvable");
	  	                       	}
	  	                             catch (SQLException e) {
	  	                       		e.getCause();
	  	                       		System.out.println("Un probleme de connexion est sourvenu, vérfier la chaine de connexion");

	  	                             }
	  
	  
	  
	  
		}

	 

	}

	 


