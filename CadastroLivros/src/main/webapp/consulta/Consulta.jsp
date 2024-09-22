<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		display: flex;
		flex-direction: row;
		background-color: #F5F6FA;
	}
	
	.menu{
		display: flex;
		width: 100%;
		flex-direction: row;
	}
</style>

</head>
<body>
	<jsp:include page="../menuLateral/Menu.jsp"></jsp:include>
	<div class="menu">
		<jsp:include page="../cabecalho/Cabecalho.jsp"></jsp:include>
		<h1>| Consultar livros</h1>
	</div>
</body>
</html>