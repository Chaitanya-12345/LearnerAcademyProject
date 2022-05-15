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
int sid=Integer.parseInt(request.getParameter("id"));
String sfname=request.getParameter("fname");
String slname=request.getParameter("lname");
int age=Integer.parseInt(request.getParameter("age"));
int classid=Integer.parseInt(request.getParameter("classId"));

StudentPOJO student=new StudentPOJO();
student.setId(sid);
student.setFname(sfname);
student.setLname(slname);
student.setAge(age);
student.setClassId(classid);
StudentDAO dao=new StudentDAO();
int row=dao.insertstudent(student);
if(row>0){
	response.sendRedirect("studentinsertsuccess.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>

</body>
</html>