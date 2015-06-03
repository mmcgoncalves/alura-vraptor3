<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<c:url value="/js/jquery-1.6.1.min.js" />"></script>
<script type="text/javascript">
function remover(id) {
    $.get('remove?produto.id=' + id, function() {
        $('#produto-' + id).hide();
        alert('Produto removido com sucesso');
    });
}
</script>
</head>
<body>
	${mensagem}
	<table>
		<c:forEach var="produto" items="${produtoList}">
			<tr id="produto-${produto.id}">
				<td>${produto.nome}</td>
				<td>${produto.descricao}</td>
				<td>${produto.preco}</td>
				<td><a href="javascript:void(0);" onclick="remover(${produto.id})">Remover</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>