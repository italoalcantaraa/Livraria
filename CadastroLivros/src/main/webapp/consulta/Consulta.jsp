<%@page import="java.util.ArrayList"%>
<%@page import="model.Livro"%>
<%@page import="java.util.List"%>
<%@page import="model.LivrosModel"%>
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
		color: #9C9C9C;
	}
	
	.container_pesquisa{
		display: flex;
		width: 100%;
		flex-direction: column;
		align-items: center;
	}
	
	#titulo{
		width: 80%;
		display: flex;
		align-items: flex-end;
		
		margin: 50px 50px ;
	}
	.container_livros{
		display: flex;
		flex-wrap: wrap;
		gap: 15px;
		width: 80%;
		color: black;
		flex-direction: row;
	}
	
	.livros{
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: white;
	border-radius: 5px;
	max-width: 500px;
	width: 49%;
	gap: 25px;
	padding: 20px;
	}
	
	
	.livros img{
		width: 240px;
		border-radius: 7px;
	}
	
	.livros div{
		display: flex;
		flex-direction: column;
		justify-content: space-between;
		width: 100%;
		height: 200px;
	}
	#preco{
	width: 100%;
	display: flex;
	justify-content: flex-end;
	align-items: flex-end;
	padding-top: 20px;
	}
	
	#preco p{
		width: 40%;
		margin: 5px;
		font-weight: bold;
		font-size: 26px;
	}

	
</style>

</head>
<body>
	<jsp:include page="../menuLateral/Menu.jsp"></jsp:include>
	<div class="container_pesquisa">
		<jsp:include page="../cabecalho/Cabecalho.jsp"></jsp:include>
		<div id="titulo">
				<h1>| Livros cadastrados</h1>	
		</div>
		<div class="container_livros">
			<%
			LivrosModel livrosModel = new LivrosModel();
			List<Livro> livrosList = livrosModel.pesquisarLivros();
			
			if(livrosList.isEmpty()){
				out.print("<img style=\"width:100px\" src=\"https://cdn-icons-png.flaticon.com/512/7486/7486747.png\"/>");
				out.print("<p>Não há produtos por livros por aqui</p>");
			}
				
			else{
				
				for(Livro l : livrosList) {
					if(l != null) {
						out.print("<div class=\"livros\">");
						out.print("<img style=\"width:140px;\" src=\" " +l.getImg()+"\" >");
						out.print("<div>");
						out.print("<h1>| "+ l.getPreco() +"</h1>");
						out.print("<p style=\"padding-top: 20px; font-size: 20px;\">Descrição:  "+ l.getDescricao()+ "</p>");
						out.print("<div id=\"preco\">");
							out.print("<p>R$ " + l.getPreco() + "</p>");
						
						out.print("</div>");
						
						out.print("</div>");
						out.print("</div>");						
					}
				}
				
			}
	%>
		</div>
		
		
	</div>
</body>
</html>