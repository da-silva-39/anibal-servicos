package dao;

import model.Pedido;
import util.DatabaseConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PedidoDAO {

	public int contarTotalPedidos() {
		String sql = "SELECT COUNT(*) FROM pedidos";
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

	public List<Pedido> listarTodos() {
		List<Pedido> lista = new ArrayList<>();
		String sql = "SELECT * FROM pedidos ORDER BY data_pedido DESC";
		try (Connection conn = DatabaseConnection.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql)) {
			while (rs.next()) {
				Pedido p = new Pedido();
				p.setId(rs.getInt("id"));
				p.setClienteNome(rs.getString("cliente_nome"));
				p.setClienteEmail(rs.getString("cliente_email"));
				p.setDescricao(rs.getString("descricao"));
				p.setDataPedido(rs.getTimestamp("data_pedido").toLocalDateTime());
				p.setStatus(rs.getString("status"));
				p.setClienteId(rs.getInt("cliente_id"));
				lista.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lista;
	}

	public List<Pedido> listarPorCliente(int clienteId) {
		List<Pedido> lista = new ArrayList<>();
		String sql = "SELECT * FROM pedidos WHERE cliente_id = ? ORDER BY data_pedido DESC";
		try (Connection conn = DatabaseConnection.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql)) {
			stmt.setInt(1, clienteId);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Pedido p = new Pedido();
				p.setId(rs.getInt("id"));
				p.setClienteNome(rs.getString("cliente_nome"));
				p.setClienteEmail(rs.getString("cliente_email"));
				p.setDescricao(rs.getString("descricao"));
				p.setDataPedido(rs.getTimestamp("data_pedido").toLocalDateTime());
				p.setStatus(rs.getString("status"));
				p.setClienteId(rs.getInt("cliente_id"));
				lista.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lista;
	}
}