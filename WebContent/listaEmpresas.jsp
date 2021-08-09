<%@ page import="java.util.List"%>
<%@ page import="br.com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Standard Taglib</title>
</head>
<body>

	<c:if test="${ not empty empresa }">
		Empresa ${ empresa } cadastrada com sucesso!
	</c:if><br>
	
	<p>Lista de empresas:</p>
	<br />
	
	<ul>
		<c:forEach items="${lista}" var="empresa">
			
			<li>
				${ empresa.nome } - 
				<fmt:formatDate value="${ empresa.dataAbertura }" pattern="dd/MM/yyyy"/>
				<a href="/editaEmpresa">edita</a>
				<a href="/removeEmpresa">remove</a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>