<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" type="text/css" href="vista.css">
</head>
<body>
<div class="container">
    <!-- Sección en un recuadro y alineado al centro -->
    <div class="student-details">
        <h3>SEGUNDO PARCIAL TEM-742</h3>
        <h3>Nombre: Evelin Pamela Ticpna Laruta</h3>
        <h3>Carnet: 10016092 LP</h3>
    </div>

    <h1>Registro Día del Internet</h1>
    <p><a href="Inicio?action=add" class="button">Nuevo</a></p>

    <table>
        <tr>
            <th>Id</th>
            <th>Nombres</th>
            <th>Apellidos</th>
            <th>Seminario</th>
            <th>Confirmado</th>
            <th>Fecha</th>
            <th></th>
            <th></th>
        </tr>
        <c:forEach var="estudiante" items="${estudiantes}">
            <tr>
                <td>${estudiante.id}</td>
                <td>${estudiante.nombres}</td>
                <td>${estudiante.apellidos}</td>
                <td>${estudiante.seminario}</td>
                <td>
                    <input type="checkbox" disabled="disabled" <c:if test="${estudiante.confirmado == 1}">checked</c:if> />
                    <span class="confirmado"><c:if test="${estudiante.confirmado == 1}">Confirmado</c:if></span>
                </td>
                <td>${estudiante.fecha}</td>
                <td><a href="Inicio?action=edit&id=${estudiante.id}" class="button">Editar</a></td>
                <td><a href="Inicio?action=delete&id=${estudiante.id}" onclick="return confirm('¿Está seguro de eliminar este estudiante?')" class="button">Eliminar</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>