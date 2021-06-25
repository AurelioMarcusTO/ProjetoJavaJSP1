package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnectionBanco {
	
	private static String url = "jdbc:postgresql://localhost:5433/curso-jsp?autoReconnect=true";
	private static String user = "postgres";
	private static String password = "admin";
	private static Connection connection  = null;
	
	public static Connection getConnection() {
		return connection;
	}
	
	static {
		conectar();
		
	}
	
	public SingleConnectionBanco() { /*Quando tiver uma instancia vai conectar*/
		conectar();
	}
	
	private static void conectar() {
		
		try {
			
			if (connection == null) {
				
				Class.forName("org.postgresql.Driver"); /*Carrega o drive de conexao do banco*/
				connection = DriverManager.getConnection(url, user, password);
				connection.setAutoCommit(false);/*nao efetuar alteracoes no banco sem nosso comando*/
				
			}
			
		}catch(Exception e) {
			
			e.printStackTrace(); /*Mostras qualquer erro no momento de conectar*/
			
		}
		
	}
	

}
