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
int id=Integer.parseInt(request.getParameter("id"));
String fname=request.getParameter("fname");
//String empemail=request.getParameter("email");
StudentPOJO student=new StudentPOJO();
student.setId(id);
student.setFname(fname);
//emp.setEmpemail(empemail);
StudentDAO dao=new StudentDAO();
int row=dao.updatestudent(student);
if(row>0){
	response.sendRedirect("studentupdatesuccess.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>

</body>
</html>