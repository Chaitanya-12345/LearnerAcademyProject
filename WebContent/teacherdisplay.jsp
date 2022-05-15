<%@page import="java.util.List"%>
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
<h1>Teacher List Details</h1>
<table border="1">

<%TeacherDAO dao=new TeacherDAO();
List<Teacher> teacher=(List<Teacher>)dao.display();
%>
<tr><th>Id</th><th>Fname</th><th>Lname</th><th>Age</th><th>Edit Name</th><th>Delete teacher</th><th>Add Teacher</th></tr>
<%for(Teacher t:teacher){ %>
<tr><td><%=t.getId() %></td><td><%=t.getFname() %></td><td><%=t.getLname() %></td><td><%=t.getAge()%></td><td><a href="teacherupdate.jsp">Edit Name</a></td><td><a href="teacherdelete.jsp">Delete teacher</a></td><td><a href="teacherinsert.jsp">Add Teacher</a></td></tr>
<%} %>
</table>
<br>
<br>

<a href="AdminControl.jsp">Go Back to Main Page..!</a>


</body>
</html>