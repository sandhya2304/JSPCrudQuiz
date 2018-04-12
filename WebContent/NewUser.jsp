<hr>

<div class="container" align="center">

<a href="ViewUser.jsp">View User</a><br>


<hr>

<h1> Add new user !!</h1>

<form action="addUser.jsp" method="post">

<table>
 <tr>
    <td>Id: </td>
    <td><input type="text" name="id" /> </td>
  </tr>
  <tr>
    <td>Name: </td>
    <td><input type="text" name="name" /> </td>
  </tr>
  <tr>
    <td>Email: </td>
    <td><input type="text" name="email" /> </td>
  </tr>
  <tr>
    <td>Password: </td>
    <td><input type="text" name="password" /> </td>
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
       <input type="submit" value="submit" />
    </td>
  </tr>
</table>

</form>

</div>

<hr/>