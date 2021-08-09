<%@ page import="java.util.List"%>
<%@ page import="br.com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Standard Taglib</title>
</head>
<body>
	<p>Lista de empresas:</p>
	<br />
	
	<ul>
		<c:forEach items="${lista}" var="empresa">
			<li>
				${ empresa.nome }
			</li>
		</c:forEach>
	</ul>
</body>
</html>