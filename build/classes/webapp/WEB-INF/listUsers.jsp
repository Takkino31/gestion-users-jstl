<%@page import="beans.User"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des utilisateurs</title>
</head>
<body>
    <h1>Liste des utilisateurs</h1>
	<c:choose>
		<c:when test="${empty users}">
			<p>
				Desole, liste des users vide <br>
				Ajouter un nouvel utilisateur <a href="add">ICI</a>
			</p>
		</c:when>
		<c:otherwise>
			<table border="1" cellpadding="10" cellsapcing="0">
	            <tr>
	                <th>Id</th>
	                <th>Nom</th>
	                <th>Prénom</th> 
	                <th>Login</th>
	                <th>Password</th>
	                <th colspan="2">Actions</th>
	            </tr>
	            <c:forEach var="user" items="${users}">
	            	<tr>
		                <td>${user.id}</td>
		                <td>${user.nom }</td>
		                <td>${user.prenom}</td>
		                <td>${user.login}</td>
		                <td>${user.password}</td>
		                <td> <a href="update?id=${user.id}">Modifier</a> </td>
		                <td> <a href="delete?id=${user.id}">Supprimer</a> </td>
		            </tr>
	            </c:forEach>
            
     	   </table>
		</c:otherwise>
	</c:choose>

	<p>Cliquez ici pour <a href="add">Ajouter un utilisateur</a></p>
</body>
</html>
