<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="StyleMenu.css">
<style type="text/css">
@charset "UTF-8";

*{
	margin:0px;
	box-sizing: border-box;
	font-family: monospace;
}


.container_menu{
	height: 100vh;
	width: 20%;
	background-color: black;
	display: flex;
	flex-direction: column;
	padding: 10px;
}

a{
	color: #00AEFF;
	font-weight: bold;
	font-size: 30px;
	cursor: pointer;
	margin-bottom: 40px;
}

.menu{
	height: 40%;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.menu div{
	height: 30px;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	width: 300px;
}

a:hover {
	text-decoration: underline;
}

</style>
</head>
<body>
	<div class="container_menu">
		<div class="menu">
			<img src="https://www.svgrepo.com/show/245968/library-book.svg" style="width: 80px" >
			<div>
				<a href="http://localhost:8080/CadastroLivros/home/Home.jsp">Adicionar livro</a>
				<a href="http://localhost:8080/CadastroLivros/consulta/Consulta.jsp">Consultar livro</a>
			</div>
			
		</div>
		
	</div>
</body>
</html>