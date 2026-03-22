package dao;

import model.Admin;
import util.DatabaseConnection;
import org.mindrot.jbcrypt.BCrypt;
import java.sql.*;

public class AdminDAO {

	public Admin findByUsername(String username) {
		String sql = "SELECT * FROM admin WHERE username = ?";
		try (Connection conn = DatabaseConnection.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, username);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				Admin admin = new Admin();
				admin.setId(rs.getInt("id"));
				admin.setUsername(rs.getString("username"));
				admin.setPasswordHash(rs.getString("password_hash"));
				admin.setCreatedAt(rs.getString("created_at"));
				return admin;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean checkPassword(String plainPassword, String hashedPassword) {
		return BCrypt.checkpw(plainPassword, hashedPassword);
	}

	// Método para criar admin inicial (executar uma vez)
	public void criarAdminInicial() {
		String sql = "INSERT INTO admin (username, password_hash) VALUES (?, ?)";
		try (Connection conn = DatabaseConnection.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			String hashed = BCrypt.hashpw("admin123", BCrypt.gensalt());
			stmt.setString(1, "admin");
			stmt.setString(2, hashed);
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}