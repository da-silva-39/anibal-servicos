package dao;

import model.Visita;
import util.DatabaseConnection;
import java.sql.*;
import java.time.LocalDateTime;

public class VisitaDAO {

	public void salvar(Visita visita) {
		String sql = "INSERT INTO visitas (data, ip, pagina) VALUES (?, ?, ?)";
		try (Connection conn = DatabaseConnection.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setTimestamp(1, Timestamp.valueOf(visita.getData()));
			stmt.setString(2, visita.getIp());
			stmt.setString(3, visita.getPagina());
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public int contarTotalVisitas() {
		String sql = "SELECT COUNT(*) FROM visitas";
		try (Connection conn = DatabaseConnection.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql)) {
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int contarVisitasHoje() {
		String sql = "SELECT COUNT(*) FROM visitas WHERE DATE(data) = CURRENT_DATE";
		try (Connection conn = DatabaseConnection.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql)) {
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
}