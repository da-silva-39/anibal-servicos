package util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String ENV_URL = System.getenv("DATABASE_URL");
    private static final String ENV_USER = System.getenv("DATABASE_USER");
    private static final String ENV_PASSWORD = System.getenv("DATABASE_PASSWORD");

    // Valores padrão para desenvolvimento local
    private static final String LOCAL_URL = "jdbc:postgresql://localhost:5432/anibal_servicos";
    private static final String LOCAL_USER = "postgres";
    private static final String LOCAL_PASSWORD = "jose200739";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.getMessage();
        } 

        // Se estiver no ambiente de produção (Render), usa as variáveis de ambiente
        if (ENV_URL != null && !ENV_URL.isEmpty()) {
        	System.out.println("render conectrion sucess");
            return DriverManager.getConnection(ENV_URL, ENV_USER, ENV_PASSWORD);
        } else {
            // Ambiente local
        	System.out.println("local conection suceful");

            return DriverManager.getConnection(LOCAL_URL, LOCAL_USER, LOCAL_PASSWORD);
        }
        
    }
    
    public static void main(String[] args) {
		try {
			System.out.println(getConnection());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Nao foi possivel COnectar");
		}
	}
}