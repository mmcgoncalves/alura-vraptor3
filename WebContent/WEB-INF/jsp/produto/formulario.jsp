<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Novo produto</title>
</head>
<body>
	<c:forEach var="error" items="${errors}">
    ${error.category} - ${error.message}<br />
	</c:forEach>
	<form action="<c:url value="/produto/adiciona" />" method="post">
		<p>Nome: <input type="text" name="produto.nome" value="${produto.nome}"/></p> 
		<p>Descrição: <input type="text" name="produto.descricao" value="${produto.descricao}"/></p> 
		<p>Preço: <input type="text" name="produto.preco" value="${produto.preco}"/></p> 
		<input type="submit" value="Adicionar" />
	</form>
</body>
</html>