<%@page import="com.sandy.bean.User"%>
<%@page import="com.sandy.dao.UserDao"%>



<%

String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));

%>

<hr>

<div class="container" align="center">

<hr>

<h1> Add new user !!</h1>

<form action="editUser.jsp" method="post">

<table>
 <tr>
    <td>Id: </td>
    <td><input type="text" name="id" value="<%= u.getId() %>" /> </td>
  </tr>
  <tr>
    <td>Name: </td>
    <td><input type="text" name="name" value="<%= u.getName() %>" /> </td>
  </tr>
  <tr>
    <td>Email: </td>
    <td><input type="text" name="email" value="<%= u.getEmail() %>" /> </td>
  </tr>
  <tr>
    <td>Password: </td>
    <td><input type="text" name="password" value="<%= u.getPassword() %>" /> </td>
  </tr>
  <tr>
    <td>Sex:</td>
    <td>
      <input type="radio" name="sex" value="male" />Male
      <input type="radio" name="sex" value="female" />Female
    </td>
  </tr>
  <tr>
    <td>Country : </td>
    <td>
       <select name="country" style="width: 155px">
         <option>India</option>
         <option>Japan</option>
         <option>China</option>
         <option>London</option>
       </select>
    </td>
  </tr>
  <tr>
    <td colspan="2">
       <input type="submit" value="Edit" />
    </td>
  </tr>
</table>

</form>

</div>

<hr/>