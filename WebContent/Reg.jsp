<%@page import="java.sql.*"%>

<%

int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String email=request.getParameter("email");
String address=request.getParameter("address");
String qual=request.getParameter("qual");


Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
		"jdbc:oracle:thin:@localhost:1521:xe","system","sandhya");  

PreparedStatement ps=con.prepareStatement("insert into student11 values(?,?,?,?,?)");
ps.setInt(1,id);
ps.setString(2,name);
ps.setString(3,email);
ps.setString(4,address);
ps.setString(5,qual);

int i=ps.executeUpdate();

con.close();
ps.close();

if(i!=0)
{
	out.print("registration suucess  :) ");
	session.setAttribute("name",name);
	request.getRequestDispatcher("index.jsp").forward(request,response);
}
else
{
	out.print("registration failed :( ");
	request.getRequestDispatcher("RegisterStudent.jsp").include(request,response);
}


%>