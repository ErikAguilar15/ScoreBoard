package com.company;

import java.sql.*;
import java.util.Scanner;

public class Main {

    static Connection conn = null;

    public static void main(String[] args) {

        String function;
        System.out.println("User Input: ");

        Scanner input = new Scanner(System.in);
        function = input.next();

        switch(function) {
            case "1":
                break;
            case "2":
                break;



        }

    }

    public static Connection connect() {
        if (conn != null)
            return conn;
        try{
            conn = DriverManager.getConnection("jdbc:sqlite:statistics.db");
            System.out.println("Establishing connection ");
        }
        catch(SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return conn;
    }

    public static void disconnect() {
        if (conn!= null)
            try {
                conn.close();
                System.out.println("Disconnection ");
            } catch (SQLException e) {
                e.printStackTrace();
            }
    }
}
