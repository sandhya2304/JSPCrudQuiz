<%@page import="com.sandy.dao.UserDao"%>
<%@page import="com.sandy.bean.User"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>





<%
List<User> userList=UserDao.findAll();
request.setAttribute("list",userList);
%>


<br>

<br>

<hr/>
<a href="NewUser.jsp">Add New User</a><br>

<h1 style="color: green;" align="center"> View Users !!!</h1>

<table border="1" width="90%">
  <tr>
    <th>Id:</th><th>name: </th><th>Password:</th><th>Email</th><th>Sex:</th><th>Country</th><th>Actions</th>
  </tr>
  <c:forEach items="${list}" var="list">
     <tr>
       <td>${list.getId()}</td>
       <td>${list.getName()}</td>
       <td>${list.getPassword()}</td>
       <td>${list.getEmail()}</td>
       <td>${list.getSex()}</td>
       <td>${list.getCountry()}</td>
       <td><a href="editForm.jsp?id=${list.getId()}">Edit</a> &nbsp;&nbsp;
        <a href="deleteUser.jsp?id=${list.getId()}">Delete</a> </td>
  
     </tr>
  </c:forEach>
  
</table>


<hr/>

<a href="index.jsp">Back</a>