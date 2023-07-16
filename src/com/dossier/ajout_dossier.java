package com.dossier;

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
 * Servlet implementation class ajout_dossier
 */
@WebServlet("/ajout_dossier")
public class ajout_dossier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ajout_dossier() {
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
	  		String a=request.getParameter("textfield");
	  		String b=request.getParameter("textfield2");
	  		String bb=request.getParameter("textfield4");

	//----------------------------------------------------------------------------------
 		String q1="INSERT INTO `doss_patient`(`id_patient`,`Service`,`Date_Sortie`,`Description`,`Resume_Sortie`,`date_validation`,`resume_chef`,`r_sec`) values('"+a+"','"+b+"',' ','"+bb+"',' ',' ',' ',' ')";

	st.executeUpdate(q1);
	 System.out.println(q1);
	//-----------------------------------------------------------------------------------
	  	                       dispatcher = request.getRequestDispatcher("/sec_dossier.jsp"); 
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
