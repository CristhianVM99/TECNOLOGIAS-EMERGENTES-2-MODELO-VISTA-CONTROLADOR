<%-- 
    Document   : index
    Created on : 29-mar-2022, 19:02:11
    Author     : USUARIO
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%
    ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

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
                margin: 20px 0;
            }
            .container table tr th
            {
                border: 1px solid #fff;
                padding: 5px 10px;
                text-align: center;
            }
            .container table tr td
            {
                border: 1px solid #fff;
                padding: 5px 10px;
                text-align: center;
            }
            .container table tr td button 
            {
                background: #ff416c;
                border: none;
                padding: 5px;
                border-radius: 5px;
            }
            .container table tr td button:hover 
            {
                background: #ff4b2b;
            }
            .container table tr td button a 
            {
                text-decoration: none;
                color:#fff;
            }
            .container h1 
            {
                color: #fff;
                text-align: center;
                text-shadow:0px 0px 5px rgba(0,0,0,1);
            }
            .container a 
            {
                text-decoration: none;
            }
            .container a:hover  
            {
                color: #ff416c;
            }
        </style>
    </head>
    <body>
        <div class="container">
                   <h1>Listado de personas</h1>
        <a href="MainController?op=nuevo">Inserta Nueva Persona -></a>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Edad</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if(lista !=null)
                {
                    for(Persona item: lista)
                    {
            %>
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getNombres()%></td>
                <td><%=item.getApellidos()%></td>
                <td><%=item.getEdad()%></td>
                <td><button><a href="MainController?op=editar&id=<%=item.getId()%>">Modificar</a></button></td>
                <td><button><a href="MainController?op=eliminar&id=<%=item.getId()%>" onclick='return confirm("Esta Seguro de Eliminar el Registro ? ");'>Eliminar</a></button></td>
            </tr>
            <%
                    }
                }      
            %>   
        </table>
        </div>
    </body>
</html>
