package org.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static org.example.Constants.*;

public class Database {
    private static Database instance;
    private Database() {

    }
    public static synchronized Database getInstance() {
        if (instance == null) {
            instance = new Database();
        }
        return instance;
    }
    public Connection getConnection() {
        try {
//            Class.forName("org.h2.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }




}
