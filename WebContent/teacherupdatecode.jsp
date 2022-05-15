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
int id=Integer.parseInt(request.getParameter("id"));
String fname=request.getParameter("fname");

Teacher teacher=new Teacher();
teacher.setId(id);
teacher.setFname(fname);

TeacherDAO dao=new TeacherDAO();
int row=dao.updateteacher(teacher);
if(row>0){
	response.sendRedirect("teacherupdatesuccess.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}
%>

</body>
</html>