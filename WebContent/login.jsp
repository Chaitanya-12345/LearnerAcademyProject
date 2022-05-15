<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

 <center> <h1>Admin Login</h1> </center> 
 <table border="1">
 
  <form action="Logincode.jsp" method="POST">  
    <center><div class="container">     
        	<input type="hidden" name="command" value="LOGIN" />
           <label>Username: </label> 
            <br/>
           <input type="text" placeholder="Enter Username" name="username" required> 
            <br/>
           <label>Password : </label>  
            <br/>
            <input type="password" placeholder="Enter Password" name="password" required>
            <br/>
            <button type="submit">Login</button>  
            <br/>
            <input type="checkbox" checked="checked">Remember me
            </table>

        </div>
        </center>
    </form>     

</body>
</html>