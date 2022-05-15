<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.DAO.TeacherDAO"%>
<%@page import="com.Model.Teacher"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
int Id=Integer.parseInt(request.getParameter("id"));
String Fname=request.getParameter("fname");
String Lname=request.getParameter("lname");
int Age=Integer.parseInt(request.getParameter("age"));

Teacher teacher=new Teacher();
teacher.setId(Id);
teacher.setFname(Fname);
teacher.setLname(Lname);
teacher.setAge(Age);
TeacherDAO dao=new TeacherDAO();
int row=dao.insertteacher(teacher);
if(row>0){
	response.sendRedirect("teacherinsertsuccess.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>

</body>
</html>