/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author LeThiThuyVy_CE160174
 */
public class DBConnection {

    public static Connection conn = null;

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:sqlserver://THINKPAD-E15\\SQLEXPRESS01:1433;databaseName=SWP_Airline_Project;user=sa;password=123456;encrypt=true;trustServerCertificate=true;";
        conn = DriverManager.getConnection(url);
        return conn;
    }

    public static void closeConnection() throws SQLException {
        if (!conn.isClosed()) {
            conn.close();
        }
    }
}
