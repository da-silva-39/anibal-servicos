package dao;

import model.Cliente;
import util.DatabaseConnection;
import org.mindrot.jbcrypt.BCrypt;
import java.sql.*;

public class ClienteDAO {

	public boolean salvar(Cliente cliente) {
		String sql = "INSERT INTO clientes (nome, email, senha_hash) VALUES (?, ?, ?)";
		try (Connection conn = DatabaseConnection.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, cliente.getNome());
			stmt.setString(2, cliente.getEmail());
			stmt.setString(3, cliente.getSenhaHash());
			return stmt.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	public Cliente buscarPorEmail(String email) {
		String sql = "SELECT * FROM clientes WHERE email = ?";
		try (Connection conn = DatabaseConnection.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setString(1, email);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				Cliente c = new Cliente();
				c.setId(rs.getInt("id"));
				c.setNome(rs.getString("nome"));
				c.setEmail(rs.getString("email"));
				c.setSenhaHash(rs.getString("senha_hash"));
				c.setGoogleId(rs.getString("google_id"));
				c.setCriadoEm(rs.getString("criado_em"));
				return c;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean checkPassword(String plainPassword, String hashedPassword) {
		return BCrypt.checkpw(plainPassword, hashedPassword);
	}

	public String hashPassword(String plainPassword) {
		return BCrypt.hashpw(plainPassword, BCrypt.gensalt());
	}
}