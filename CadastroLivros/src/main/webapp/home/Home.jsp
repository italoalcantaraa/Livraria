<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="StyleHome.css">
<style type="text/css">
body {
	display: flex;
	flex-direction: row;
	height: 100vh;
	background-color: #F5F6FA;
	color: #9C9C9C;
}

.form {
	width: 80%;
}

.conteudo_form {
	width: 100%;
	
	display: flex;
	flex-direction: column;
	align-items: center;
	padding-top: 50px;
}

form {
	width: 60%;
	display: flex;
	flex-direction	: column;
	align-items: center;
	justify-content: center;
	padding: 20px;
	background-color: white;
	border-radius: 5px;
	gap: 7px;
}

form div {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	margin-bottom: 10px;
	width: 100%;
	gap: 10px;
}

form input {
	width: 100%;
	padding: 5px;
	font-size: 17px;
	outline: none;
	border: 2px solid #DCDCDC;
	border-radius: 5px;
}

form select {
	padding: 5px;
	width: 100%;
	outline: none;
	border: 2px solid #DCDCDC;
	border-radius: 5px;
}

form textarea {
	width: 100%;
	height: 70px;
	outline: none;
	border: 2px solid #DCDCDC;
	border-radius: 5px;
	padding: 2px;
	font-size: 20px;
}

#titulo{
width: 66%;
padding-bottom: 50px;
}

#adicionar{
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	padding: 10px;
	font-size: 20px;
	background-color: #00AEFF;
}

#adicionar:hover {
	opacity: 80%;
	transition: 0.5s;
 }

</style>
<body>	
<jsp:include page="../menuLateral/Menu.jsp"></jsp:include>
<div class="form">
<jsp:include page="../cabecalho/Cabecalho.jsp"></jsp:include>
	
		<div class="conteudo_form">
		
		<div id="titulo">
				<h1>| Adicionar livros</h1>	
		</div>
		
		<form method="post" action="${pageContext.request.contextPath}/LivroServlet">
			<div>
				<input name="nome" placeholder="Nome" type="text">
				<input name="preco" value="0" placeholder="price" type="number" step="0.01" min="0.01">
			</div>
			<div>
				<select name="categoria">
					<option value="">Categoria
					<option value="Ficção Científica">Ficção Científica
					<option value="Romance">Romance
					<option value="Conto">Conto
					<option value="Poesia">Poesia
					<option value="Biografia">Biografia
					<option value="Autoajuda">Autoajuda
				</select>
				<input name="url" placeholder="URL da imagem">
			</div>
			<textarea name="descricao" minlength=20  maxlength=255 placeholder="Descrição"></textarea>
			<input type="submit" value="Adicionar livro" id="adicionar">
			<p style="color: red; font-weight: bold">
					<% 
					String nome = (String)request.getAttribute("erro"); 
					String infoCampos = (String)request.getAttribute("infoCampos"); 
							if(nome != null)	
								out.print(nome);
							
							if(infoCampos != null)	
								out.print(infoCampos);
					%>
				</p>	
		</form>
	</div>
	
</div>
</body>
</html>