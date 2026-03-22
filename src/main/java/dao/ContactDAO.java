package dao;

import model.ContactMessage;
import util.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ContactDAO {

	public void save(ContactMessage contact) throws SQLException {
		String sql = "INSERT INTO contact_messages (name, email, phone, subject, message, status) VALUES (?, ?, ?, ?, ?, ?)";

		try (Connection conn = DatabaseConnection.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql)) {

			stmt.setString(1, contact.getName());
			stmt.setString(2, contact.getEmail());
			stmt.setString(3, contact.getPhone());
			stmt.setString(4, contact.getSubject());
			stmt.setString(5, contact.getMessage());
			stmt.setString(6, "pending");

			stmt.executeUpdate();
		}
	}
}