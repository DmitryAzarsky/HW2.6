package org.example;

import java.sql.Connection;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) {
        Database db = Database.getInstance();
        try (Connection conn = db.getConnection()) {
            System.out.println("Connected!");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}