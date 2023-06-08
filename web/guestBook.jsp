<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="guestBook" scope="page" class="guestBook.GuestBookBean" />
<jsp:setProperty name="guestBook" property="*" />


<% response.setHeader("Refresh", "3; URL=http://localhost:8080/GuestBook/guestBookView.jsp");
%>

<%
String message = "";
String name = request.getParameter("name") ;
String address = request.getParameter("address") ;
String company = request.getParameter("company") ;
String email = request.getParameter("email") ;
//jika name, address, company dan email tidak (“”) maka
if((!name.equals("")) & (!address.equals("")) & (!company.equals("")) & (!email.equals(""))){
    if(guestBook.simpan()){
        message = "Thank you " + name + " for Registering ";
        }else{
            message = "Error" ;
        }
    }else{
        message="Field nama, alamat, company dan email tidak boleh kosong";
}
//lakukan insert data ke database
//jika berhasil message = "Thank you " + name + " for Registering "
;
//jika tidak set message = "Error" ;
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>guestbook</title>
    </head>
    <body>
        <h2><%=message%>
        <br>
        <a href="index.jsp"> GUEST BOOK </a>
        <br>
        <a href="guestBookView.jsp"> VIEW GUEST BOOK </a>
        </h2
    </body>
</html>

