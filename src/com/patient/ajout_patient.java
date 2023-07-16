package com.patient;

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
 * Servlet implementation class ajout_patient
 */
@WebServlet("/ajout_patient")
public class ajout_patient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ajout_patient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null; 
	   	 
	 	   
	  	  try {
	  		String a=request.getParameter("textfield");
	  		String b=request.getParameter("textfield2");
	  		String c=request.getParameter("textfield3");
	  		String d=request.getParameter("textfield4");

	  		String e=request.getParameter("textfield5");

	  		 
	  		String oo=request.getParameter("textfield6");
	  		 
	  		Class.forName("com.mysql.jdbc.Driver");

	  		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");
	  		Statement st=con.createStatement();

	  		String q1=" INSERT INTO `patient_list`(`nom`, `prenom`, `datenaissance`, `gouvernant`, `cin`, `id_social`) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+oo+"')";
	System.out.println(q1);
	st.executeUpdate(q1);
	 //System.out.println(q1);
	//-----------------------------------------------------------------------------------
	  	                       dispatcher = request.getRequestDispatcher("/espace_sec.jsp"); 
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
