<%@page import="java.sql.*"%>
<%

Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
		"jdbc:oracle:thin:@localhost:1521:xe","system","sandhya");  

PreparedStatement ps=con.prepareStatement("select * from qualification");
ResultSet rs=ps.executeQuery();

%>


<br>

<br>



<div class="container" align="center">

<h1> Student Registration Form!!</h1>

<form action="./Reg.jsp">

 <pre>
  
   id:         <input type="text" name="id" /> <br>
   name:       <input type="text" name="name" /> <br> 
   email:      <input type="text" name="email" /> <br>
   address:    <input type="text" name="address" /> <br>
   qual:        <select name="qual">
                   <%
                   while(rs.next())
                   {
                   %>
                 <option value="<%= rs.getString(2)%>"> <%= rs.getString(2)%>  </option>
                    <%
                   }
                    %>
                
   
               </select>
 
 </pre>
  
   <input type="submit" value="submit" />

</form>
</div>

<%
con.close();
%>