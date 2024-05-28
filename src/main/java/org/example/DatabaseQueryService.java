package org.example;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class DatabaseQueryService {
    public static List<YoungestEldestWorkers> findYoungestEldestWorkers() {
        return executeSQLFindYoungestEldestWorkersStatement(readSQLQueryStatement("./sql/find_youngest_eldest_workers.sql"));
    }
    public static List<MaxProjectsClient> findMaxProjectClient() {
        return executeSQLFindMaxProjectsClientStatement(readSQLQueryStatement("./sql/find_max_projects_client.sql"));
    }
    public static List<LongestProject> findLongestProject() {
        return executeSQLFindLongestProjectStatement(readSQLQueryStatement("./sql/find_longest_project"));
    }
    private static String readSQLQueryStatement(String path) {
        String sqlStatement = "";
        File file = new File(path);
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

    private static List<LongestProject> executeSQLFindLongestProjectStatement(String sql) {
        List<LongestProject> longestProjectsList = new ArrayList<>();
        try(Connection connection = Database.getInstance().getConnection()) {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                longestProjectsList.add(new LongestProject(resultSet.getInt("id")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return longestProjectsList;
    }

    private static List<MaxProjectsClient> executeSQLFindMaxProjectsClientStatement(String sql) {
        List<MaxProjectsClient> maxProjectsClientsList = new ArrayList<>();
        try(Connection connection = Database.getInstance().getConnection()) {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                maxProjectsClientsList.add(new MaxProjectsClient(resultSet.getInt("id"), resultSet.getInt("quantity_of_projects")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return maxProjectsClientsList;
    }
    private static List<YoungestEldestWorkers> executeSQLFindYoungestEldestWorkersStatement(String sql) {
        List<YoungestEldestWorkers> youngestEldestWorkersList = new ArrayList<>();
        try(Connection connection = Database.getInstance().getConnection()) {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                youngestEldestWorkersList.add(new YoungestEldestWorkers(resultSet.getString("NAME"), resultSet.getString("BIRTHDAY"), resultSet.getString("TYPE")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return youngestEldestWorkersList;
    }
}
