<%@page import="java.util.List"%>
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
<h1>Student List Details</h1>
<table border="1">

<%StudentDAO dao=new StudentDAO();
List<StudentPOJO> student=(List<StudentPOJO>)dao.display();
%>
<tr><th>Id</th><th>Fname</th><th>Lname</th><th>Age</th><th>classId</th><th>Edit Name</th><th>Delete Student</th><th>Add Student</th></tr>
<%for(StudentPOJO s:student){ %>
<tr><td><%=s.getId() %></td><td><%=s.getFname() %></td><td><%=s.getLname() %></td><td><%=s.getAge()%></td><td><%=s.getClassId()%></td><td><a href="studentupdate.jsp">Edit Name</a></td><td><a href="studentdelete.jsp">Delete Student</a></td><td><a href="index.jsp">Add Student</a></td></tr>
<%} %>
</table>
<br>
<br>
<a href="AdminControl.jsp">Go Back to Main Page..!</a>

</body>
</html>