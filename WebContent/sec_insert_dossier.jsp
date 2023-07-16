<%@page import="java.sql.*" %>
 
<%@page import="java.io.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>
 
<%@page import="java.sql.Statement" %> 
 
<%
 

String a=request.getParameter("textfield");
	String b=request.getParameter("textfield2");
	String bb=request.getParameter("textfield4");
 
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfe_hopital","root","");
 
	String sql="INSERT INTO `doss_patient`(`id_patient`,`Service`,`Date_Sortie`,`Description`,`Resume_Sortie`,`date_validation`,`resume_chef`) values ('"+a+"','"+b+"','"+a+"','"+bb+"','"+a+"','"+a+"','"+a+"')";
System.out.println(sql);
Statement st=con.createStatement();
 
int flag;
flag=st.executeUpdate(sql);
if(flag==1)
 
{
 	  %>
 
  <script type="text/javascript">

window.alert("opération réalisé avec sucess");
window.location = "espace_admin.jsp"

</script>
 
 
 <%
out.println("Added!");
 
}
 
else
 
{
 
out.println("Failed");
 
}
 
response.sendRedirect("espace_admin.jsp");
 
%>