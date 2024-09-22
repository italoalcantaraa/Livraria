package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	public Connection conexaoBd() throws ClassNotFoundException {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/db_livros?user=root&password=ita75802309";
			con = DriverManager.getConnection(url);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return con;
	}
}
