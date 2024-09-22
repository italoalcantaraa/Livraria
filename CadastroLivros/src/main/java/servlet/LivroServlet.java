package servlet;

import java.io.Console;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Livro;
import model.LivrosModel;

@WebServlet("/LivroServlet")
public class LivroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public LivroServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			String nome = request.getParameter("nome");
			String preco = request.getParameter("preco");
			String categoria = request.getParameter("categoria");
			String img = request.getParameter("url");
			String descricao = request.getParameter("descricao");

			if(nome == "" || preco == "" || categoria == "" || img == "" || descricao == "" ) {
				request.setAttribute("infoCampos","*Informe os campos*");
				request.getRequestDispatcher("home/Home.jsp").forward(request, response);
				return;
			}
			
			double precoToDouble = Double.parseDouble(preco);
			
			Livro livro = new Livro(nome,img,descricao,categoria, precoToDouble);
			
			LivrosModel conexao = new LivrosModel();
			conexao.cadastrarLivro(livro);
			
			nome = null;
			preco = "0";
			categoria = null;
			img = null;
			descricao = null;
			
			System.out.print("ErroAquidsdasdadsadasasdsa");
			request.getRequestDispatcher("home/Home.jsp").forward(request, response);

		}catch(Exception e) {
			System.out.print(e);
			request.setAttribute("erro", "*Ocorreu um problema*");
			request.getRequestDispatcher("home/Home.jsp").forward(request, response);
		}
			
	}

}
