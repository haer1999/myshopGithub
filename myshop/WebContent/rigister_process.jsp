<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="service.impl.UserService" %>
<%@ page import="bean.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTf-8");
String name = request.getParameter("name");
String password = request.getParameter("password");
String email = request.getParameter("email");
User user = new User();
user.setName(name);
user.setPassword(password);
user.setEmail(email);
UserService userService = new UserService();

try
{
	userService.addUser(user);

%><jsp:forward page="main.jsp"></jsp:forward>
<% 
}catch(Exception ex){
	ex.printStackTrace();
%><jsp:forward page="error.jsp"></jsp:forward>
<% 
}%>


</body>
</html>