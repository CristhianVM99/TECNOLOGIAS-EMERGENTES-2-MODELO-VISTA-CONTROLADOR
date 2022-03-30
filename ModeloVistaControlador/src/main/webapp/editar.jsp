<%-- 
    Document   : editar
    Created on : 29-mar-2022, 19:31:30
    Author     : USUARIO
--%>

<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Persona item = (Persona) request.getAttribute("miPersona");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar | Registro</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
            *
            {
                font-family: 'Poppins', sans-serif;
                margin: 0;
                padding: 0;
                color:#fff;
            }
            body 
            {
               width: 100%;
               height: 100vh;
               background: url(imagenes/fondo_base.jpg);
               background-size: cover;
               background-position: center;
               display: flex;
               justify-content: center;
               align-items: center;
               

            }
            .container 
            {
                backdrop-filter: blur(20px);
                background: rgba(0,0,0,.1);
                padding: 30px;
                border-radius: 20px;
                border:1px solid rgba(255,255,255,.1);
                border-top: none;
                border-left: none;
                
            }
            .container table 
            {
                border-collapse: collapse;
            }
            .container table tr th td 
            {
                border: 1px solid #fff;
                padding: 5px 10px;
                text-align: center;
            }
            .container h1 
            {
                color: #fff;
                text-shadow:0px 0px 5px rgba(0,0,0,1);
            }
            .container table tr td input[type=submit] 
            {
                background: #ff416c;
                border: none;
                padding: 5px;
                margin: 10px;
                border-radius: 5px;
            }
            .container table tr td input[type=submit]:hover 
            {
                background: #ff4b2b;
            }
            .container table tr td input[type=text] 
            {
                padding: 5px;
                border: none;
                outline: none;
                background: rgba(0,0,0,.1);
                margin-bottom: 5px;
            }
            
        </style>
    </head>
    <body>
        <div class="container">
                    <h1><%= (item.getId()== 0)?"Nuevo Registro":"Editar Registro"%></h1>
        <form action="MainController" method="POST">
            <input type="hidden" name="id" value="<%=item.getId()%>">
            <table>
                <tr>
                    <td>Nombre </td>
                    <td><input type="text" name="nombres" value="<%=item.getNombres()%>"></td>
                </tr>
                <tr>
                    <td>Apellidos </td>
                    <td><input type="text" name="apellidos" value="<%=item.getApellidos()%>"></td>
                </tr>
                <tr>
                    <td>Edad </td>
                    <td><input type="text" name="edad" value="<%=item.getEdad()%>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>   
                </tr>
            </table>
            
        </form>
        </div>
    </body>
</html>
