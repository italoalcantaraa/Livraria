package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.LivrosModel;

@WebServlet("/ExibeLivrosServlet")
public class ExibeLivrosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ExibeLivrosServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			LivrosModel livrosModel = new LivrosModel();
			
			request.setAttribute("livrosList", livrosModel.pesquisarLivros());
			request.getRequestDispatcher("consulta/Consulta.jsp").forward(request, response);
			
		}catch(Exception e) {
			request.setAttribute("erro", "Erro ao consultar Livros");
			request.getRequestDispatcher("consulta/Consulta.jsp").forward(request, response);
			
		}
	
	}

}
