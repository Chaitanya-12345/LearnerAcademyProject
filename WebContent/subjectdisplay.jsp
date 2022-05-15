<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    
     <%@page import="com.DAO.SubjectDAO"%>
<%@page import="com.Model.Subject"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Subject List Details</h1>
<table border="1">

<%SubjectDAO dao=new SubjectDAO();
List<Subject> subject=(List<Subject>)dao.display();
%>
<tr><th>Id</th><th>Name</th><th>Shortcutname</th><th>Edit Name</th><th>Delete subject</th><th>Add Subject</th></tr>
<%for(Subject s:subject){ %>
<tr><td><%=s.getId() %></td><td><%=s.getName() %></td><td><%=s.getShortcutname() %></td><td><a href="subjectupdate.jsp">Edit Name</a></td><td><a href="subjectdelete.jsp">Delete subject</a></td><td><a href="subjectinsert.jsp">Add Subject</a></td></tr>
<%} %>
</table>
<br>
<br>

<a href="AdminControl.jsp">Go Back to Main Page..!</a>



</body>
</html>