package com.login;

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
 * Servlet implementation class inscription
 */
@WebServlet("/inscription")
public class inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public inscription() {
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
	  		String b=request.getParameter("prenom");
	  		String c=request.getParameter("gsm");
	  		String d=request.getParameter("login");

	  		String e=request.getParameter("password");

	  		 
	  		String oo=request.getParameter("profil");
	  		String profil=request.getParameter("profil");

	  		Class.forName("com.mysql.jdbc.Driver");

	  		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");
	  		Statement st=con.createStatement();
	  		if(Integer.parseInt(profil)==4){
	  		String q1=" INSERT INTO `user`(`nom`, `prenom`, `gsm` ,`login`, `pwd`, `role`) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+oo+"')";
	System.out.println(q1);
	st.executeUpdate(q1);
	  		}
	  		else
	  		{
	  			String q1=" INSERT INTO `doctor_list`(`nom`, `specialite`, `email`, `contact`, `login`, `pwd`, `role`) values('"+a+"','0','0','"+c+"','"+d+"','"+e+"','"+oo+"')";
	  			System.out.println(q1);
	  			st.executeUpdate(q1);	
	  			
	  		}
	 //System.out.println(q1);
	//-----------------------------------------------------------------------------------
	  	                       dispatcher = request.getRequestDispatcher("/login.jsp"); 
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
