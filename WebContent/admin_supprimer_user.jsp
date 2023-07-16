<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>

<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.sql.Connection" %>
<%
//int username=request.getParameter("username");
 
Class.forName("com.mysql.jdbc.Driver");
 
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");
    String recordToDelete = request.getParameter("id");
  int record=Integer.parseInt(recordToDelete);  //  int record=Integer.parseInt(recordToDelete);
    // Use PreparedStatements here instead of Statment
    Statement stmt = con.createStatement();
    ResultSet rs;
    stmt.executeUpdate("DELETE FROM user WHERE id =  "+record+" ");
	  %>
 
  <script type="text/javascript">
<!--
window.alert("opération réalisé avec sucess");
window.location = "employer.jsp"
//-->
</script>
 
 
 <%
	
     response.sendRedirect("espace_admin.jsp"); // redirect to JSP one, which will again reload.
%>

<script type="text/javascript">
<!--
window.alert("operation realise  avec sucess");
history.back();
//-->
</script>


</body>
</html>
