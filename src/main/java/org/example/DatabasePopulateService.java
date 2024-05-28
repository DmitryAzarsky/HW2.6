package org.example;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class DatabasePopulateService {
    public static void main(String[] args) {
        executeSQLPopulateStatement(readSQLPopulateStatement());
    }

    private static String readSQLPopulateStatement() {
        String sqlStatement = "";
        File file = new File("./sql/populate_db.sql");
        try {
            Scanner scanner = new Scanner(file);
            while (scanner.hasNext()) {
                sqlStatement += scanner.nextLine();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return sqlStatement;
    }
    private static void executeSQLPopulateStatement(String sql) {
        try (Connection connection = Database.getInstance().getConnection()) {
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
