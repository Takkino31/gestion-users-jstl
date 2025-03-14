<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Donnees Transmises</h1>
	<p>
		<b>Message : </b> ${message}
	</p>
	<h2>Donnees de l'utilisateur</h2>
	<p>
		<b>Nom : </b>${user.nom}<br>
		<b>Prénom : </b> ${user.prenom} <br>
		<b>Login : </b> ${user.login}<br>
		<b>Password : </b>${user.password}<br>
	</p>
</body>
</html>