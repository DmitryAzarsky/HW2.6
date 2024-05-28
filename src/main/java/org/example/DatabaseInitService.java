package org.example;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;



public class DatabaseInitService {
    public static void main(String[] args) {
        executeSQLInitStatement(readSQLInitStatement());
    }
    private static String readSQLInitStatement() {
        String result = "";
        File file = new File("./sql/init_db.sql");
        try {
            Scanner scanner = new Scanner(file);
            while (scanner.hasNext()){
                result += scanner.nextLine();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return result;
    }

    private static void executeSQLInitStatement(String sql) {
        try (Connection connection = Database.getInstance().getConnection()){
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
