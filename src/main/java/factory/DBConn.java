package factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {
    private static Connection con;

    public static Connection getConn() throws SQLException, ClassNotFoundException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/sbb3_todo?useSSL=false&serverTimezone=UTC",
                "root", 
                ""
            );
        }
        return con;
    }
}
