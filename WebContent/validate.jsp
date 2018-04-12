<%@page import="java.sql.*"%>

<%


String q1=request.getParameter("q1");
String q2=request.getParameter("q2");
String q3=request.getParameter("q3");
String q4=request.getParameter("q4");
String q5=request.getParameter("q5");

try
{

Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
		"jdbc:oracle:thin:@localhost:1521:xe","system","sandhya");  

Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from answer");

int count = 0;


while(rs.next())
{
	
	if(q1.equals(rs.getString("q1")))
	{
		count =count +1;
	}
	if(q2.equals(rs.getString("q2")))
	{
		count =count +1;
	}
	if(q3.equals(rs.getString("q3")))
	{
		count =count +1;
	}
	if(q4.equals(rs.getString("q4")))
	{
		count =count +1;
	}
	if(q5.equals(rs.getString("q5")))
	{
		count =count +1;
	}
	
}
out.print("your score is:"+count);
if(count <= 2)
{
	out.print("you are failed below 2");
}
else
{
	out.print("you scored above 2 you passed!!!");
}

}
catch(Exception e)
{
	e.printStackTrace();
}
	




%>