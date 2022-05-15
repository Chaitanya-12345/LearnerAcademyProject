<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.DAO.StudentDAO"%>
<%@page import="com.Model.StudentPOJO"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int Id=Integer.parseInt(request.getParameter("id"));
StudentPOJO student=new StudentPOJO();
student.setId(Id);
	StudentDAO dao = new StudentDAO();
	int row = dao.deletestudent(student);
	if (row>0) {
		
		response.sendRedirect("studentdelsuccess.jsp");
	} 
	else {
		response.sendRedirect("fail.jsp");
	}
%>

</body>
</html>