package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class modif_medecin
 */
@WebServlet("/modif_medecin")
public class modif_medecin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modif_medecin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null; 
	   	 
	 	   
	  	  try {
	  		String a=request.getParameter("nom");
	  		String b=request.getParameter("Specialite");
	  		String c=request.getParameter("E-mail");
	  		String d=request.getParameter("Telephone");

	  		String e=request.getParameter("Login");

	  		String f=request.getParameter("Password");

	  		String g=request.getParameter("profil");
	  		String id=request.getParameter("id"); 
	  		String service=request.getParameter("service");
	  		Class.forName("com.mysql.jdbc.Driver");

	  		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");
	  		Statement st=con.createStatement();

 	
	  		String q1=" UPDATE `doctor_list` SET `nom`='"+a+"',`specialite`='"+b+"',`email`='"+c+"',`contact`='"+d+"',`login`='"+e+"',`pwd`='"+f+"',`role`='"+g+"',`service`='"+service+"' WHERE id='"+id+"'";
	  		System.out.println(q1);
	st.executeUpdate(q1);
	 //System.out.println(q1);
	//-----------------------------------------------------------------------------------
	  	                       dispatcher = request.getRequestDispatcher("/admin_medecin.jsp"); 
	  	                         dispatcher.forward(request, response);

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
