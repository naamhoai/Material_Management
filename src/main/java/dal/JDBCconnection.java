package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCconnection {
    public  Connection connection;
    public JDBCconnection()  {
        try {
            String url = "jdbc:mysql://localhost:3306/quanlyvattu";
            String user = "root";
            String password = "1234";
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, password);

        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException("Lỗi khi khởi tạo kết nối cơ sở dữ liệu" + e);
        }
    }

}
