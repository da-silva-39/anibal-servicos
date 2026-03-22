package util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:postgresql://localhost:5432/anibal_servicos";
    private static final String USER = "postgres";
    private static final String PASSWORD = "jose200739";

    static {
        try {
            // Carregar o driver JDBC (opcional a partir do JDBC 4, mas pode ser explícito)
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    // Método para testar a conexão (opcional)
    public static void main(String[] args) {
        try (Connection conn = getConnection()) {
            System.out.println("Conexão bem-sucedida!");
        } catch (SQLException e) {
            System.out.println("Conexao nao feita" + e.getMessage());
        }
    }
}
