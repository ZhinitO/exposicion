<%-- 
    Document   : login
    Created on : 13/11/2019, 05:49:10 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <form action="Login" method="post">
            <div class="imgcontainer">
                <img src="img/login.jpg" alt="Avatar" class="avatar">
            </div>

            <div class="container">
                <label for="uname"><b>&nbsp&nbsp&nbsp CORREO</b></label>
                <input type="text" placeholder="Ingrese el Correo" name="uname" required>

                <label for="psw"><b>&nbsp&nbsp CONTRASEÑA</b></label>
                <input type="password" placeholder="Ingrese la Contraseña" name="psw" required>

                <button type="submit">INGRESAR</button> 
                
            </div>            
        </form>
    </body>
</html>
