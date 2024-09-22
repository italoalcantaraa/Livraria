package model;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

public class LivrosModel {
	Connection con;
	PreparedStatement pstm;
	
	public void cadastrarLivro(Livro livro) throws ClassNotFoundException {
		String sql = "INSERT INTO tb_livros(nome, img, descricao, categoria, preco) VALUES(?,?,?,?,?);";
		con = new Conexao().conexaoBd();
		
		try {
			pstm = (PreparedStatement) con.prepareStatement(sql);
			pstm.setString(1, livro.getNome());
			pstm.setString(2, livro.getImg());
			pstm.setString(3, livro.getDescricao());
			pstm.setString(4, livro.getCategoria());
			pstm.setDouble(5, livro.getPreco());
			
			pstm.execute();
			pstm.close();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
	
	}
}
