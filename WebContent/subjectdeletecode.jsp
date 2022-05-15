<%@page import="com.DAO.SubjectDAO"%>
<%@page import="com.Model.Subject"%>
    

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int Id=Integer.parseInt(request.getParameter("id"));
Subject sub=new Subject();
sub.setId(Id);
	SubjectDAO dao = new SubjectDAO();
	int row = dao.deletesubject(sub);
	if (row>0) {
		
		response.sendRedirect("subjectdeletesuccess.jsp");
	} 
	else {
		response.sendRedirect("fail.jsp");
	}
%>


</body>
</html>