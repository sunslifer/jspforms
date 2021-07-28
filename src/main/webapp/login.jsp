<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login</title>
</head>
<%
    String message = null;
    if(request.getParameter("login") != null) {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        if("tom".equals(userName) && "jerry".equals(password)) {
            response.sendRedirect("success.jsp");
        } else {
            message = "Password and Username do not match";
        }
    }
%>
<body>
    <%
        if(message != null)
            out.print("<span style='color:red'>" + message + "</span>");
    %>
    <form method = post>
        UserName<input type="text" name="userName"/>
        <br/>
        Password<input type="text" name="password"/>
        <br/>
        <input type="submit" name="login" value="Login"/>
    </form>
</body>
</html>
