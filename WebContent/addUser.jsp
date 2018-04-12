
<%@ page import="com.sandy.dao.UserDao"%>
<jsp:useBean id="user" class="com.sandy.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>


<%
int i=UserDao.save(user);
if(i> 0)
{
	response.sendRedirect("welcome.jsp");
}else
{
	out.print("not reordedd  !!");
	response.sendRedirect("NewUser.jsp");
}


%>