package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

public class LivrosModel {
	Connection con;
	PreparedStatement pstm;
	ResultSet result;
	List<Livro> livrosList = new ArrayList<Livro>();
	
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
	
	public List<Livro> pesquisarLivros() throws ClassNotFoundException {
		
		String sql = "SELECT * FROM tb_livros";
		con = new Conexao().conexaoBd();
		
		try {
			pstm = (PreparedStatement) con.prepareStatement(sql);
			result = pstm.executeQuery(sql);
			
			while(result.next()) {
				Livro livro = new Livro();
				
				livro.setId(result.getInt("id"));
				livro.setNome(result.getString("nome"));
				livro.setImg(result.getString("img"));
				livro.setDescricao(result.getString("descricao"));
				livro.setCategoria(result.getString("categoria"));
				livro.setPreco(result.getDouble("preco"));
				
				livrosList.add(livro);
			}
			
		}catch(Exception e) {
			e.printStackTrace();	
		}
		
		return livrosList;
	}
}
