<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>request内置对象</h1>
<%request.setCharacterEncoding("utf-8"); %>
用户名：<%=request.getParameter("username") %><br>
爱好：<%
if(request.getParameterValues("favorites")!=null)
{
	String[] favorites=request.getParameterValues("favorite");
	for(int i=0;i<favorites.length;i++){
		out.println(favorites[i]+"&nbsp;&nbsp;");
	}
}

%>
</body>
</html>