<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
     <%@page import="com.DAO.ClassDAO"%>
<%@page import="com.Model.Classes"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>class List Details</h1>
<table border="1">

<%ClassDAO dao=new ClassDAO();
List<Classes> c=(List<Classes>)dao.display();
%>
<tr><th>Classid</th><th>Studentid</th><th>Teacherid</th><th>Subjectid</th><th>Time</th><th>Edit Name</th><th>Delete Class</th><th>Add Class</th></tr>
<%for(Classes c1:c){ %>
<tr><td><%=c1.getId() %></td><td><%=c1.getStudentid() %></td><td><%=c1.getTeacherid() %></td><td><%=c1.getSubjectid()%></td><td><%=c1.getTime()%></td><td><a href="classupdate.jsp">Edit Name</a></td><td><a href="classdelete.jsp">Delete class</a></td><td><a href="classinsert.jsp">Add class</a></td></tr>

<%} %>
</table>
<br>
<br>

<a href="AdminControl.jsp">Go Back to Main Page..!</a>


</body>
</html>