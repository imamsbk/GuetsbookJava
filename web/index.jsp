<%-- 
    Document   : index
    Created on : Jun 5, 2023, 10:14:18 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Guest Book</h1>
 <form name="login" action="guestBook.jsp" method="post">
 <table width="200" border="1">
 <tr>
 <td>Name</td>
 <td><input type="text" name="name"></td>
 </tr>
 <tr>
 <td>Address</td>
 <td><input type="text" name="address"></td>
 </tr>
 <tr>
 <td>Company</td>
 <td><input type="text" name="company"></td>
 </tr>
 <tr>
 <td>Email</td>
 <td><input type="text" name="email"></td>
 </tr>
 <tr>
 <td colspan="2"><input type="submit" name="Submit" value="Submit"></td>
 </tr>
 </table>
 <h2><a href="guestBookView.jsp" > View Guest Book </a></h2>
    </body>
</html>
