<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
     <%@page import="com.DAO.StudentDAO"%>
<%@page import="com.Model.StudentPOJO"%>
<%@page import="com.DAO.TeacherDAO"%>
<%@page import="com.Model.Teacher"%>
<%@page import="com.DAO.SubjectDAO"%>
<%@page import="com.Model.Subject"%>
<%@page import="com.DAO.ClassDAO"%>
<%@page import="com.Model.Classes"%>
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
<tr><th>Classid</th><th>Studentid</th><th>Teacherid</th><th>Subjectid</th><th>Time</th><th>Edit Name</th><th>Delete Class</th></tr>
<%for(Classes c1:c){ %>
<tr><td><%=c1.getId() %></td><td><%=c1.getStudentid() %></td><td><%=c1.getTeacherid() %></td><td><%=c1.getSubjectid()%></td><td><%=c1.getTime()%></td><td><a href="classupdate.jsp">Edit Name</a></td><td><a href="classdelete.jsp">Delete class</a></td></tr>
<%} %>
</table>


<h1>Student List Details</h1>
<table border="1">

<%StudentDAO dao3=new StudentDAO();
List<StudentPOJO> student=(List<StudentPOJO>)dao3.display();
%>
<tr><th>Id</th><th>Fname</th><th>Lname</th><th>Age</th><th>classId</th><th>Edit Name</th><th>Delete Student</th><th>Add Student</th></</tr>
<%for(StudentPOJO s:student){ %>
<tr><td><%=s.getId() %></td><td><%=s.getFname() %></td><td><%=s.getLname() %></td><td><%=s.getAge()%></td><td><%=s.getClassId()%></td><td><a href="studentupdate.jsp">Edit Name</a></td><td><a href="studentdelete.jsp">Delete Student</a><td><a href="index.jsp">Add Student</a></td></tr>
<%} %>
</table>

<h1>Teacher List Details</h1>
<table border="1">

<%TeacherDAO dao1=new TeacherDAO();
List<Teacher> teacher=(List<Teacher>)dao1.display();
%>
<tr><th>Id</th><th>Fname</th><th>Lname</th><th>Age</th><th>Edit Name</th><th>Delete teacher</th><th>Add Teacher</th></tr>
<%for(Teacher t:teacher){ %>
<tr><td><%=t.getId() %></td><td><%=t.getFname() %></td><td><%=t.getLname() %></td><td><%=t.getAge()%></td><td><a href="teacherupdate.jsp">Edit Name</a></td><td><a href="teacherdelete.jsp">Delete teacher</a><td><a href="teacherinsert.jsp">Add Teacher</a></td></tr>
<%} %>

</table>

<h1>Subject List Details</h1>
<table border="1">

<%SubjectDAO dao2=new SubjectDAO();
List<Subject> subject=(List<Subject>)dao2.display();
%>
<tr><th>Id</th><th>Name</th><th>Shortcutname</th><th>Edit Name</th><th>Delete subject</th><th>Add Subject</tr>
<%for(Subject s:subject){ %>
<tr><td><%=s.getId() %></td><td><%=s.getName() %></td><td><%=s.getShortcutname() %></td><td><a href="subjectupdate.jsp">Edit Name</a></td><td><a href="subjectdelete.jsp">Delete subject</a></td><td><a href="subjectinsert.jsp">Add Subject</a></td></tr>
<%} %>
</table>

</table>
<br>
<br>
<a href="AdminControl.jsp">Go Back to Main Page..!</a>

 

</body>
</html> 