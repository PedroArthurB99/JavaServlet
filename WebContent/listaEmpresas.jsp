<%@page import="java.util.List"%>
<%@page import="br.com.alura.gerenciador.servlet.Empresa"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Lista:
	<br />
	<ul>
		<%
			List<Empresa> lista = (List<Empresa>) request.getAttribute("lista");
			for (Empresa empresa : lista) {
		%>
				<li><%= empresa.getNome() %></li>
		<%		
			}
		%>

	</ul>
</body>
</html>