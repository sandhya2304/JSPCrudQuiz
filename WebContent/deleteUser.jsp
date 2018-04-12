
<%@page import="com.sandy.dao.UserDao"%>
<jsp:useBean id="user" class="com.sandy.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>



<%

int i=UserDao.delete(user);
response.sendRedirect("ViewUser.jsp");


%>