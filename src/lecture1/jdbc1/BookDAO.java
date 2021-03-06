package lecture1.jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class BookDAO {
	private static Book getBookFrom(ResultSet resultSet) throws SQLException {
		Book book = new Book();
		book.setId(resultSet.getInt("id"));
		book.setTitle(resultSet.getString("title"));
		book.setAuthor(resultSet.getString("author"));
		book.setCategoryName(resultSet.getString("categoryName"));
		book.setPrice(resultSet.getInt("price"));
		book.setPublisher(resultSet.getString("publisher"));
		return book;
	}

	public static List<Book> findAll() throws Exception {
		String sql = "SELECT b.*, c.categoryName " + "FROM book b LEFT JOIN category c ON b.categoryId = c.id";
		try (Connection connection = DB.getConnection("book");
				PreparedStatement statement = connection.prepareStatement(sql);
				ResultSet resultSet = statement.executeQuery()) {
			ArrayList<Book> list = new ArrayList<Book>();
			while (resultSet.next()) {
				list.add(getBookFrom(resultSet));
			}
			return list;
		}
	}
	public static List<Book> findByName(String title) throws Exception {
		String sql = "SELECT b.*, c.categoryName " + "FROM book b LEFT JOIN category c ON b.categoryId = c.id "
				+ "WHERE b.author LIKE ?";
		try (Connection connection = DB.getConnection("book");
				PreparedStatement statement = connection.prepareStatement(sql)) {
			statement.setString(1, title + "%");
			try (ResultSet resultSet = statement.executeQuery()) {
				List<Book> list = new ArrayList<Book>();
				while (resultSet.next()) {
					list.add(getBookFrom(resultSet));
				}
				return list;
			}
		}
	}
}
