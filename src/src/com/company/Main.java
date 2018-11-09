package com.company;

import java.sql.*;
import java.util.Scanner;

public class Main {

    static Connection conn = null;

    public static void main(String[] args) throws SQLException {

        String function;
        System.out.println("User Input: ");

        Scanner input = new Scanner(System.in);
        boolean cont = true;

        while (cont) {
            function = input.next();
            switch(function) {
                case "1":
                    connect();
                    break;
                case "2":
                    disconnect();
                    break;
                case "3":
                    createTables();
                    break;
                case "4":
                    insertData();
                    break;
                case "e":
                    cont = false;
                    break;
            }
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

    public static void createTables() throws SQLException {

        Statement stat = null;
        stat = conn.createStatement();

        String sql = "CREATE TABLE IF NOT EXISTS Basketball (\n" +
                "    b_teamID    VARCHAR (255) NOT NULL,\n" +
                "    b_points    INTEGER (4),\n" +
                "    b_rebounds  INTEGER (4),\n" +
                "    b_assists   INTEGER (4),\n" +
                "    b_steals    INTEGER (5),\n" +
                "    b_blocks    INTEGER (5),\n" +
                "    b_turnovers INTEGER (4)   NOT NULL\n" +
                ");";
        stat.executeUpdate(sql);

        sql = "CREATE TABLE IF NOT EXISTS BPlayerStats (\n" +
                "    bp_playerID  VARCHAR (255) NOT NULL,\n" +
                "    bp_rebounds  INTEGER (5),\n" +
                "    bp_assists   INTEGER (5),\n" +
                "    bp_steals    INTEGER (5),\n" +
                "    bp_blocks    INTEGER (5),\n" +
                "    bp_turnovers INTEGER (5)\n" +
                ");";
        stat.executeUpdate(sql);

        sql = "CREATE TABLE IF NOT EXISTS Coach (\n" +
                "    c_name     CHAR (50)     NOT NULL,\n" +
                "    c_coachID  VARCHAR (255) NOT NULL,\n" +
                "    c_teamID   VARCHAR (255) NOT NULL,\n" +
                "    c_sport    CHAR (50)     NOT NULL,\n" +
                "    c_league   VARCHAR (255) NOT NULL,\n" +
                "    c_division VARCHAR (255) NOT NULL,\n" +
                "    c_schoolID VARCHAR (255) NOT NULL\n" +
                ");";
        stat.executeUpdate(sql);

        sql = "CREATE TABLE IF NOT EXISTS Football (\n" +
                "    f_teamID         VARCHAR (255) NOT NULL,\n" +
                "    f_passyards      INTEGER (4),\n" +
                "    f_rushyards      INTEGER (4),\n" +
                "    f_tackles        INTEGER (4),\n" +
                "    [f_receptions ]  INTEGER (5),\n" +
                "    f_sacks          INTEGER (5),\n" +
                "    f_ointerceptions INTEGER (4),\n" +
                "    f_forcefumbles   INTEGER (4),\n" +
                "    f_touchdowns     INTEGER (5),\n" +
                "    f_receivingyards INTEGER (5),\n" +
                "    f_fumbles        INTEGER (4),\n" +
                "    f_dinterceptions INTEGER (4)\n" +
                ");";
        stat.executeUpdate(sql);

        sql = "CREATE TABLE IF NOT EXISTS FPlayerStats (\n" +
                "    pl_playerID       VARCHAR (255) NOT NULL,\n" +
                "    pl_passyards      INTEGER (5),\n" +
                "    pl_rushyards      INTEGER (5),\n" +
                "    pl_receptions     INTEGER (5),\n" +
                "    pl_ointerceptions INTEGER (5),\n" +
                "    pl_touchdowns     INTEGER (5),\n" +
                "    pl_receivingyards INTEGER (5),\n" +
                "    pl_fumbles        INTEGER (5),\n" +
                "    pl_dinterceptions INTEGER (5),\n" +
                "    pl_sacks          INTEGER (5),\n" +
                "    pl_tackles        INTEGER (5),\n" +
                "    pl_forcefumbles   INTEGER (5)\n" +
                ");";
        stat.executeUpdate(sql);

        sql = "CREATE TABLE IF NOT EXISTS Player (\n" +
                "    p_name      CHAR (50)      NOT NULL,\n" +
                "    p_playerID  VARCHAR (255)  NOT NULL,\n" +
                "    p_teamID    VARCHAR (255)  NOT NULL,\n" +
                "    p_sport     CHAR (50)      NOT NULL,\n" +
                "    [p_height ] DECIMAL (3, 2) NOT NULL,\n" +
                "    p_weight    DECIMAL (3, 1) NOT NULL,\n" +
                "    p_position  CHAR (5)       NOT NULL\n" +
                ");";
        stat.executeUpdate(sql);

        sql = "CREATE TABLE IF NOT EXISTS Schedule (\n" +
                "    s_teamID   VARCHAR (255) NOT NULL,\n" +
                "    s_sport    CHAR (50)     NOT NULL,\n" +
                "    s_schoolID VARCHAR (255) NOT NULL,\n" +
                "    s_matchup  DATE          NOT NULL,\n" +
                "    s_week     INTEGER (2)   NOT NULL,\n" +
                "    s_location CHAR (50)     NOT NULL\n" +
                ");";
        stat.executeUpdate(sql);

        sql = "CREATE TABLE IF NOT EXISTS School (\n" +
                "    sc_schoolID VARCHAR (255) NOT NULL,\n" +
                "    sc_city     CHAR (50)     NOT NULL,\n" +
                "    sc_state    CHAR (50)     NOT NULL,\n" +
                "    sc_mascot   CHAR (50)     NOT NULL,\n" +
                "    sc_name     CHAR (50)     NOT NULL\n" +
                ");";
        stat.executeUpdate(sql);

        sql = "CREATE TABLE IF NOT EXISTS Team (\n" +
                "    t_name     CHAR (50)     NOT NULL,\n" +
                "    t_teamID   VARCHAR (255) NOT NULL,\n" +
                "    t_sport    CHAR (50)     NOT NULL,\n" +
                "    t_league   VARCHAR (255) NOT NULL,\n" +
                "    t_division VARCHAR (255) NOT NULL,\n" +
                "    t_schoolID VARCHAR (255) NOT NULL\n" +
                ");";
        stat.executeUpdate(sql);

        sql = "CREATE TABLE IF NOT EXISTS TeamStats (\n" +
                "    st_teamID  VARCHAR (255) NOT NULL,\n" +
                "    st_sport   CHAR (50)     NOT NULL,\n" +
                "    st_matchup DATE          NOT NULL,\n" +
                "    st_score1  INTEGER (5)   NOT NULL,\n" +
                "    st_score2  INTEGER (5)   NOT NULL\n" +
                ");";
        stat.executeUpdate(sql);

    }

    public static void insertData() throws SQLException {

        Statement stat = null;
        stat = conn.createStatement();

        String sql;

        sql = "INSERT INTO Coach (c_name, c_coachID, c_teamID, c_sport, c_league, c_division, c_schoolID) VALUES\n" +
                "(JOHN GRUDEN, 1, 1, FOOTBALL, VALLEY, 1, 1),\n" +
                "(JAY GRUDEN, 2, 2, FOOTBALL, VALLEY, 1, 2),\n" +
                "(JOHN MADDEN, 3, 3, FOOTBALL, VALLEY, 1, 3),\n" +
                "(FLORIN RUSU, 4, 4, FOOTBALL, VALLEY, 1, 4),\n" +
                "(MIKE MICHAELS, 5, 5, FOOTBALL, VALLEY, 1, 5),\n" +
                "(MIKE JONES, 6, 6, FOOTBALL, MEL, 2, 6),\n" +
                "(MIKE TOMLINSON, 7, 7, FOOTBALL, MEL, 2, 7),\n" +
                "(JAMES WHITE, 8, 8, FOOTBALL, MEL, 2, 8),\n" +
                "(TOM HOTHEM, 9, 9, FOOTBALL, MEL, 2, 9),\n" +
                "(JIM BROWN, 10, 10, FOOTBALL, MEL, 2, 10)\n" +
                "(MIKE BROWN, 11, 11, BASKETBALL, VALLEY, 1, 1),\n" +
                "(GREG POPOVICH, 12, 12, BASKETBALL, VALLEY, 1, 2),\n" +
                "(STEVE KERR, 13, 13, BASKETBALL, VALLEY, 1, 3),\n" +
                "(KOBE BRYANT, 14, 14, BASKETBALL, VALLEY, 1, 4),\n" +
                "(MICHAEL JORDAN, 15, 15, BASKETBALL, VALLEY, 1, 5),\n" +
                "(TIM TEBOW, 16, 16, BASKETBALL, MEL, 2, 6),\n" +
                "(DRAKE, 17, 17, BASKETBALL, MEL, 2, 7),\n" +
                "(LIL WAYNE, 18, 18, BASKETBALL, MEL, 2, 8),\n" +
                "(DANIEL HERNANDEZ, 19, 19, BASKETBALL, MEL, 2, 9),\n" +
                "(YOUNG THUG, 20, 20, BASKETBALL, MEL, 2, 10);";
        stat.executeUpdate(sql);

        sql = "INSERT INTO Team (t_name, t_teamID, t_sport, t_league, t_division, t_schoolID) VALUES\n" +
                "(RAIDERS, 1, FOOTBALL, VALLEY, 1, 1),\n" +
                "(JETS, 2, FOOTBALL, VALLEY, 1, 2),\n" +
                "(SEAHAWKS, 3, FOOTBALL, VALLEY, 1, 3),\n" +
                "(RAMS, 4, FOOTBALL, VALLEY, 1, 4),\n" +
                "(COLTS, 5, FOOTBALL, VALLEY, 1, 5),\n" +
                "(WILDCATS, 6, FOOTBALL, MEL, 2, 6),\n" +
                "(MUSTANGS, 7, FOOTBALL, MEL, 2, 7),\n" +
                "(HOOSIERS, 8, FOOTBALL, MEL, 2, 8),\n" +
                "(LADIES, 9, FOOTBALL, MEL, 2, 9),\n" +
                "(COOTERS, 10, FOOTBALL, MEL, 2, 10),\n" +
                "(RAIDERS, 11, BASKETBALL, VALLEY, 1, 1),\n" +
                "(JETS, 12, BASKETBALL, VALLEY, 1, 2),\n" +
                "(SEAHAWKS, 13, BASKETBALL, VALLEY, 1, 3),\n" +
                "(RAMS, 14, BASKETBALL, VALLEY, 1, 4),\n" +
                "(COLTS, 15, BASKETBALL, VALLEY, 1, 5),\n" +
                "(WILDCATS, 16, BASKETBALL, MEL, 2, 6),\n" +
                "(MUSTANGS, 17, BASKETBALL, MEL, 2, 7),\n" +
                "(HOOSIERS, 18, BASKETBALL, MEL, 2, 8),\n" +
                "(LADIES, 19, BASKETBALL, MEL, 2, 9),\n" +
                "(COOTERS, 20, BASKETBALL, MEL, 2, 10);";
        stat.executeUpdate(sql);

        sql = "INSERT INTO Player (p_name, p_playerID, p_teamID, p_sport, p_height, p_weight, p_position) VALUES\n" +
                "(TIM, 1, 1, FOOTBALL, 72, 180, QB),\n" +
                "(BOB, 2, 1, FOOTBALL, 72, 180, HB),\n" +
                "(JOE, 3, 1, FOOTBALL, 72, 180, CB),\n" +
                "(TRE, 4, 1, FOOTBALL, 72, 180, MLB),\n" +
                "(TEE, 5, 1, FOOTBALL, 72, 180, S),\n" +
                "(TIM, 6, 2, FOOTBALL, 72, 180, QB),\n" +
                "(BOB, 7, 2, FOOTBALL, 72, 180, HB),\n" +
                "(JOE, 8, 2, FOOTBALL, 72, 180, CB),\n" +
                "(TRE, 9, 2, FOOTBALL, 72, 180, MLB),\n" +
                "(TEE, 10, 2, FOOTBALL, 72, 180, S),\n" +
                "(TIM, 11, 3, FOOTBALL, 72, 180, QB),\n" +
                "(BOB, 12, 3, FOOTBALL, 72, 180, HB),\n" +
                "(JOE, 13, 3, FOOTBALL, 72, 180, CB),\n" +
                "(TRE, 14, 3, FOOTBALL, 72, 180, MLB),\n" +
                "(TEE, 15, 3, FOOTBALL, 72, 180, S),\n" +
                "(TIM, 16, 4, FOOTBALL, 72, 180, QB),\n" +
                "(BOB, 17, 4, FOOTBALL, 72, 180, HB),\n" +
                "(JOE, 18, 4, FOOTBALL, 72, 180, CB),\n" +
                "(TRE, 19, 4, FOOTBALL, 72, 180, MLB),\n" +
                "(TEE, 20, 4, FOOTBALL, 72, 180, S),\n" +
                "(TIM, 21, 5, FOOTBALL, 72, 180, QB),\n" +
                "(BOB, 22, 5, FOOTBALL, 72, 180, HB),\n" +
                "(JOE, 23, 5, FOOTBALL, 72, 180, CB),\n" +
                "(TRE, 24, 5, FOOTBALL, 72, 180, MLB),\n" +
                "(TEE, 25, 5, FOOTBALL, 72, 180, S),\n" +
                "(TIM, 26, 6, FOOTBALL, 72, 180, QB),\n" +
                "(BOB, 27, 6, FOOTBALL, 72, 180, HB),\n" +
                "(JOE, 28, 6, FOOTBALL, 72, 180, CB),\n" +
                "(TRE, 29, 6, FOOTBALL, 72, 180, MLB),\n" +
                "(TEE, 30, 6, FOOTBALL, 72, 180, S),\n" +
                "(TIM, 31, 7, FOOTBALL, 72, 180, QB),\n" +
                "(BOB, 32, 7, FOOTBALL, 72, 180, HB),\n" +
                "(JOE, 33, 7, FOOTBALL, 72, 180, CB),\n" +
                "(TRE, 34, 7, FOOTBALL, 72, 180, MLB),\n" +
                "(TEE, 35, 7, FOOTBALL, 72, 180, S),\n" +
                "(TIM, 36, 8, FOOTBALL, 72, 180, QB),\n" +
                "(BOB, 37, 8, FOOTBALL, 72, 180, HB),\n" +
                "(JOE, 38, 8, FOOTBALL, 72, 180, CB),\n" +
                "(TRE, 39, 8, FOOTBALL, 72, 180, MLB),\n" +
                "(TEE, 40, 8, FOOTBALL, 72, 180, S),\n" +
                "(TIM, 41, 9, FOOTBALL, 72, 180, QB),\n" +
                "(BOB, 42, 9, FOOTBALL, 72, 180, HB),\n" +
                "(JOE, 43, 9, FOOTBALL, 72, 180, CB),\n" +
                "(TRE, 44, 9, FOOTBALL, 72, 180, MLB),\n" +
                "(TEE, 45, 9, FOOTBALL, 72, 180, S),\n" +
                "(TIM, 46, 10, FOOTBALL, 72, 180, QB),\n" +
                "(BOB, 47, 10, FOOTBALL, 72, 180, HB),\n" +
                "(JOE, 48, 10, FOOTBALL, 72, 180, CB),\n" +
                "(TRE, 49, 10, FOOTBALL, 72, 180, MLB),\n" +
                "(TEE, 50, 10, FOOTBALL, 72, 180, S),\n" +
                "(TIM, 51, 11, BASKETBALL, 72, 180, QB),\n" +
                "(BOB, 52, 11, BASKETBALL, 72, 180, SG),\n" +
                "(JOE, 53, 11, BASKETBALL, 72, 180, SF),\n" +
                "(TRE, 54, 11, BASKETBALL, 72, 180, PF),\n" +
                "(TEE, 55, 11, BASKETBALL, 72, 180, C),\n" +
                "(TIM, 56, 12, BASKETBALL, 72, 180, QB),\n" +
                "(BOB, 57, 12, BASKETBALL, 72, 180, SG),\n" +
                "(JOE, 58, 12, BASKETBALL, 72, 180, SF),\n" +
                "(TRE, 59, 12, BASKETBALL, 72, 180, PF),\n" +
                "(TEE, 60, 12, BASKETBALL, 72, 180, C),\n" +
                "(TIM, 61, 13, BASKETBALL, 72, 180, QB),\n" +
                "(BOB, 62, 13, BASKETBALL, 72, 180, SG),\n" +
                "(JOE, 63, 13, BASKETBALL, 72, 180, SF),\n" +
                "(TRE, 64, 13, BASKETBALL, 72, 180, PF),\n" +
                "(TEE, 65, 13, BASKETBALL, 72, 180, C),\n" +
                "(TIM, 66, 14, BASKETBALL, 72, 180, QB),\n" +
                "(BOB, 67, 14, BASKETBALL, 72, 180, SG),\n" +
                "(JOE, 68, 14, BASKETBALL, 72, 180, SF),\n" +
                "(TRE, 69, 14, BASKETBALL, 72, 180, PF),\n" +
                "(TEE, 70, 14, BASKETBALL, 72, 180, C),\n" +
                "(TIM, 71, 15, BASKETBALL, 72, 180, QB),\n" +
                "(BOB, 72, 15, BASKETBALL, 72, 180, SG),\n" +
                "(JOE, 73, 15, BASKETBALL, 72, 180, SF),\n" +
                "(TRE, 74, 15, BASKETBALL, 72, 180, PF),\n" +
                "(TEE, 75, 15, BASKETBALL, 72, 180, C),\n" +
                "(TIM, 76, 16, BASKETBALL, 72, 180, QB),\n" +
                "(BOB, 77, 16, BASKETBALL, 72, 180, SG),\n" +
                "(JOE, 78, 16, BASKETBALL, 72, 180, SF),\n" +
                "(TRE, 79, 16, BASKETBALL, 72, 180, PF),\n" +
                "(TEE, 80, 16, BASKETBALL, 72, 180, C),\n" +
                "(TIM, 81, 17, BASKETBALL, 72, 180, QB),\n" +
                "(BOB, 82, 17, BASKETBALL, 72, 180, SG),\n" +
                "(JOE, 83, 17, BASKETBALL, 72, 180, SF),\n" +
                "(TRE, 84, 17, BASKETBALL, 72, 180, PF),\n" +
                "(TEE, 85, 17, BASKETBALL, 72, 180, C),\n" +
                "(TIM, 86, 18, BASKETBALL, 72, 180, QB),\n" +
                "(BOB, 87, 18, BASKETBALL, 72, 180, SG),\n" +
                "(JOE, 88, 18, BASKETBALL, 72, 180, SF),\n" +
                "(TRE, 89, 18, BASKETBALL, 72, 180, PF),\n" +
                "(TEE, 90, 18, BASKETBALL, 72, 180, C),\n" +
                "(TIM, 91, 19, BASKETBALL, 72, 180, QB),\n" +
                "(BOB, 92, 19, BASKETBALL, 72, 180, SG),\n" +
                "(JOE, 93, 19, BASKETBALL, 72, 180, SF),\n" +
                "(TRE, 94, 19, BASKETBALL, 72, 180, PF),\n" +
                "(TEE, 95, 19, BASKETBALL, 72, 180, C),\n" +
                "(TIM, 96, 20, BASKETBALL, 72, 180, QB),\n" +
                "(BOB, 97, 20, BASKETBALL, 72, 180, SG),\n" +
                "(JOE, 98, 20, BASKETBALL, 72, 180, SF),\n" +
                "(TRE, 99, 20, BASKETBALL, 72, 180, PF),\n" +
                "(TEE, 100, 20, BASKETBALL, 72, 180, C);";
        stat.executeUpdate(sql);

        sql = "INSERT INTO Schedule (s_teamID, s_sport, s_schoolID, s_matchup, s_week, s_location) VALUES\n" +
                "(1, FOOTBALL, 1, 2018-01-01, 1, HOME),\n" +
                "(1, FOOTBALL, 1, 2018-01-08, 2, AWAY),\n" +
                "(1, FOOTBALL, 1, 2018-01-15, 3, HOME),\n" +
                "(1, FOOTBALL, 1, 2018-01-22, 4, HOME),\n" +
                "(1, FOOTBALL, 1, 2018-01-29, 5, HOME),\n" +
                "(1, FOOTBALL, 1, 2018-02-05, 6, AWAY),\n" +
                "(1, FOOTBALL, 1, 2018-02-12, 7, AWAY),\n" +
                "(1, FOOTBALL, 1, 2018-02-19, 8, AWAY),\n" +
                "(1, FOOTBALL, 1, 2018-02-26, 9, HOME),\n" +
                "(1, FOOTBALL, 1, 2018-03-05, 10, HOME),\n" +
                "(2, FOOTBALL, 2, 2018-01-01, 1, AWAY),\n" +
                "(2, FOOTBALL, 2, 2018-01-08, 2, AWAY),\n" +
                "(2, FOOTBALL, 2, 2018-01-15, 3, HOME),\n" +
                "(2, FOOTBALL, 2, 2018-01-22, 4, AWAY),\n" +
                "(2, FOOTBALL, 2, 2018-01-29, 5, HOME),\n" +
                "(2, FOOTBALL, 2, 2018-02-05, 6, AWAY),\n" +
                "(2, FOOTBALL, 2, 2018-02-12, 7, HOME),\n" +
                "(2, FOOTBALL, 2, 2018-02-19, 8, AWAY),\n" +
                "(2, FOOTBALL, 2, 2018-02-26, 9, HOME),\n" +
                "(2, FOOTBALL, 2, 2018-03-05, 10, AWAY),\n" +
                "(3, FOOTBALL, 3, 2018-01-01, 1, HOME),\n" +
                "(3, FOOTBALL, 3, 2018-01-08, 2, AWAY),\n" +
                "(3, FOOTBALL, 3, 2018-01-15, 3, HOME),\n" +
                "(3, FOOTBALL, 3, 2018-01-22, 4, HOME),\n" +
                "(3, FOOTBALL, 3, 2018-01-29, 5, AWAY),\n" +
                "(3, FOOTBALL, 3, 2018-02-05, 6, AWAY),\n" +
                "(3, FOOTBALL, 3, 2018-02-12, 7, HOME),\n" +
                "(3, FOOTBALL, 3, 2018-02-19, 8, AWAY),\n" +
                "(3, FOOTBALL, 3, 2018-02-26, 9, AWAY),\n" +
                "(3, FOOTBALL, 3, 2018-03-05, 10, HOME),\n" +
                "(4, FOOTBALL, 4, 2018-01-01, 1, HOME),\n" +
                "(4, FOOTBALL, 4, 2018-01-08, 2, HOME),\n" +
                "(4, FOOTBALL, 4, 2018-01-15, 3, HOME),\n" +
                "(4, FOOTBALL, 4, 2018-01-22, 4, AWAY),\n" +
                "(4, FOOTBALL, 4, 2018-01-29, 5, HOME),\n" +
                "(4, FOOTBALL, 4, 2018-02-05, 6, HOME),\n" +
                "(4, FOOTBALL, 4, 2018-02-12, 7, AWAY),\n" +
                "(4, FOOTBALL, 4, 2018-02-19, 8, HOME),\n" +
                "(4, FOOTBALL, 4, 2018-02-26, 9, HOME),\n" +
                "(4, FOOTBALL, 4, 2018-03-05, 10, AWAY),\n" +
                "(5, FOOTBALL, 5, 2018-01-01, 1, AWAY),\n" +
                "(5, FOOTBALL, 5, 2018-01-08, 2, HOME),\n" +
                "(5, FOOTBALL, 5, 2018-01-15, 3, HOME),\n" +
                "(5, FOOTBALL, 5, 2018-01-22, 4, AWAY),\n" +
                "(5, FOOTBALL, 5, 2018-01-29, 5, HOME),\n" +
                "(5, FOOTBALL, 5, 2018-02-05, 6, HOME),\n" +
                "(5, FOOTBALL, 5, 2018-02-12, 7, AWAY),\n" +
                "(5, FOOTBALL, 5, 2018-02-19, 8, HOME),\n" +
                "(5, FOOTBALL, 5, 2018-02-26, 9, HOME),\n" +
                "(5, FOOTBALL, 5, 2018-03-05, 10, AWAY),\n" +
                "(6, FOOTBALL, 6, 2018-01-01, 1, AWAY),\n" +
                "(6, FOOTBALL, 6, 2018-01-08, 2, HOME),\n" +
                "(6, FOOTBALL, 6, 2018-01-15, 3, HOME),\n" +
                "(6, FOOTBALL, 6, 2018-01-22, 4, AWAY),\n" +
                "(6, FOOTBALL, 6, 2018-01-29, 5, AWAY),\n" +
                "(6, FOOTBALL, 6, 2018-02-05, 6, HOME),\n" +
                "(6, FOOTBALL, 6, 2018-02-12, 7, AWAY),\n" +
                "(6, FOOTBALL, 6, 2018-02-19, 8, HOME),\n" +
                "(6, FOOTBALL, 6, 2018-02-26, 9, AWAY),\n" +
                "(6, FOOTBALL, 6, 2018-03-05, 10, HOME),\n" +
                "(7, FOOTBALL, 7, 2018-01-01, 1, AWAY),\n" +
                "(7, FOOTBALL, 7, 2018-01-08, 2, AWAY),\n" +
                "(7, FOOTBALL, 7, 2018-01-15, 3, AWAY),\n" +
                "(7, FOOTBALL, 7, 2018-01-22, 4, HOME),\n" +
                "(7, FOOTBALL, 7, 2018-01-29, 5, HOME),\n" +
                "(7, FOOTBALL, 7, 2018-02-05, 6, HOME),\n" +
                "(7, FOOTBALL, 7, 2018-02-12, 7, AWAY),\n" +
                "(7, FOOTBALL, 7, 2018-02-19, 8, HOME),\n" +
                "(7, FOOTBALL, 7, 2018-02-26, 9, HOME),\n" +
                "(7, FOOTBALL, 7, 2018-03-05, 10, HOME),\n" +
                "(8, FOOTBALL, 8, 2018-01-01, 1, AWAY),\n" +
                "(8, FOOTBALL, 8, 2018-01-08, 2, HOME),\n" +
                "(8, FOOTBALL, 8, 2018-01-15, 3, AWAY),\n" +
                "(8, FOOTBALL, 8, 2018-01-22, 4, HOME),\n" +
                "(8, FOOTBALL, 8, 2018-01-29, 5, AWAY),\n" +
                "(8, FOOTBALL, 8, 2018-02-05, 6, HOME),\n" +
                "(8, FOOTBALL, 8, 2018-02-12, 7, HOME),\n" +
                "(8, FOOTBALL, 8, 2018-02-19, 8, HOME),\n" +
                "(8, FOOTBALL, 8, 2018-02-26, 9, AWAY),\n" +
                "(8, FOOTBALL, 8, 2018-03-05, 10, HOME),\n" +
                "(9, FOOTBALL, 9, 2018-01-01, 1, AWAY),\n" +
                "(9, FOOTBALL, 9, 2018-01-08, 2, HOME),\n" +
                "(9, FOOTBALL, 9, 2018-01-15, 3, HOME),\n" +
                "(9, FOOTBALL, 9, 2018-01-22, 4, AWAY),\n" +
                "(9, FOOTBALL, 9, 2018-01-29, 5, HOME),\n" +
                "(9, FOOTBALL, 9, 2018-02-05, 6, HOME),\n" +
                "(9, FOOTBALL, 9, 2018-02-12, 7, AWAY),\n" +
                "(9, FOOTBALL, 9, 2018-02-19, 8, HOME),\n" +
                "(9, FOOTBALL, 9, 2018-02-26, 9, HOME),\n" +
                "(9, FOOTBALL, 9, 2018-03-05, 10, AWAY),\n" +
                "(10, FOOTBALL, 10, 2018-01-01, 1, AWAY),\n" +
                "(10, FOOTBALL, 10, 2018-01-08, 2, HOME),\n" +
                "(10, FOOTBALL, 10, 2018-01-15, 3, AWAY),\n" +
                "(10, FOOTBALL, 10, 2018-01-22, 4, HOME),\n" +
                "(10, FOOTBALL, 10, 2018-01-29, 5, AWAY),\n" +
                "(10, FOOTBALL, 10, 2018-02-05, 6, HOME),\n" +
                "(10, FOOTBALL, 10, 2018-02-12, 7, AWAY),\n" +
                "(10, FOOTBALL, 10, 2018-02-19, 8, HOME),\n" +
                "(10, FOOTBALL, 10, 2018-02-26, 9, HOME),\n" +
                "(10, FOOTBALL, 10, 2018-03-05, 10, AWAY),\n" +
                "(11, BASKETBALL, 11, 2018-01-01, 1, HOME),\n" +
                "(11, BASKETBALL, 11, 2018-01-08, 2, AWAY),\n" +
                "(11, BASKETBALL, 11, 2018-01-15, 3, HOME),\n" +
                "(11, BASKETBALL, 11, 2018-01-22, 4, HOME),\n" +
                "(11, BASKETBALL, 11, 2018-01-29, 5, HOME),\n" +
                "(11, BASKETBALL, 11, 2018-02-05, 6, AWAY),\n" +
                "(11, BASKETBALL, 11, 2018-02-12, 7, AWAY),\n" +
                "(11, BASKETBALL, 11, 2018-02-19, 8, AWAY),\n" +
                "(11, BASKETBALL, 11, 2018-02-26, 9, HOME),\n" +
                "(11, BASKETBALL, 11, 2018-03-05, 10, HOME),\n" +
                "(12, BASKETBALL, 12, 2018-01-01, 1, AWAY),\n" +
                "(12, BASKETBALL, 12, 2018-01-08, 2, HOME),\n" +
                "(12, BASKETBALL, 12, 2018-01-15, 3, HOME),\n" +
                "(12, BASKETBALL, 12, 2018-01-22, 4, AWAY),\n" +
                "(12, BASKETBALL, 12, 2018-01-29, 5, HOME),\n" +
                "(12, BASKETBALL, 12, 2018-02-05, 6, HOME),\n" +
                "(12, BASKETBALL, 12, 2018-02-12, 7, AWAY),\n" +
                "(12, BASKETBALL, 12, 2018-02-19, 8, AWAY),\n" +
                "(12, BASKETBALL, 12, 2018-02-26, 9, AWAY),\n" +
                "(12, BASKETBALL, 12, 2018-03-05, 10, HOME),\n" +
                "(13, BASKETBALL, 13, 2018-01-01, 1, AWAY),\n" +
                "(13, BASKETBALL, 13, 2018-01-08, 2, HOME),\n" +
                "(13, BASKETBALL, 13, 2018-01-15, 3, AWAY),\n" +
                "(13, BASKETBALL, 13, 2018-01-22, 4, AWAY),\n" +
                "(13, BASKETBALL, 13, 2018-01-29, 5, HOME),\n" +
                "(13, BASKETBALL, 13, 2018-02-05, 6, HOME),\n" +
                "(13, BASKETBALL, 13, 2018-02-12, 7, AWAY),\n" +
                "(13, BASKETBALL, 13, 2018-02-19, 8, HOME),\n" +
                "(13, BASKETBALL, 13, 2018-02-26, 9, HOME),\n" +
                "(13, BASKETBALL, 13, 2018-03-05, 10, AWAY),\n" +
                "(14, BASKETBALL, 14, 2018-01-01, 1, AWAY),\n" +
                "(14, BASKETBALL, 14, 2018-01-08, 2, HOME),\n" +
                "(14, BASKETBALL, 14, 2018-01-15, 3, AWAY),\n" +
                "(14, BASKETBALL, 14, 2018-01-22, 4, HOME),\n" +
                "(14, BASKETBALL, 14, 2018-01-29, 5, AWAY),\n" +
                "(14, BASKETBALL, 14, 2018-02-05, 6, AWAY),\n" +
                "(14, BASKETBALL, 14, 2018-02-12, 7, HOME),\n" +
                "(14, BASKETBALL, 14, 2018-02-19, 8, HOME),\n" +
                "(14, BASKETBALL, 14, 2018-02-26, 9, AWAY),\n" +
                "(14, BASKETBALL, 14, 2018-03-05, 10, AWAY),\n" +
                "(15, BASKETBALL, 15, 2018-01-01, 1, AWAY),\n" +
                "(15, BASKETBALL, 15, 2018-01-08, 2, HOME),\n" +
                "(15, BASKETBALL, 15, 2018-01-15, 3, AWAY),\n" +
                "(15, BASKETBALL, 15, 2018-01-22, 4, AWAY),\n" +
                "(15, BASKETBALL, 15, 2018-01-29, 5, HOME),\n" +
                "(15, BASKETBALL, 15, 2018-02-05, 6, AWAY),\n" +
                "(15, BASKETBALL, 15, 2018-02-12, 7, HOME),\n" +
                "(15, BASKETBALL, 15, 2018-02-19, 8, AWAY),\n" +
                "(15, BASKETBALL, 15, 2018-02-26, 9, AWAY),\n" +
                "(15, BASKETBALL, 15, 2018-03-05, 10, HOME),\n" +
                "(16, BASKETBALL, 16, 2018-01-01, 1, AWAY),\n" +
                "(16, BASKETBALL, 16, 2018-01-08, 2, HOME),\n" +
                "(16, BASKETBALL, 16, 2018-01-15, 3, AWAY),\n" +
                "(16, BASKETBALL, 16, 2018-01-22, 4, AWAY),\n" +
                "(16, BASKETBALL, 16, 2018-01-29, 5, HOME),\n" +
                "(16, BASKETBALL, 16, 2018-02-05, 6, HOME),\n" +
                "(16, BASKETBALL, 16, 2018-02-12, 7, AWAY),\n" +
                "(16, BASKETBALL, 16, 2018-02-19, 8, HOME),\n" +
                "(16, BASKETBALL, 16, 2018-02-26, 9, AWAY),\n" +
                "(16, BASKETBALL, 16, 2018-03-05, 10, AWAY),\n" +
                "(17, BASKETBALL, 17, 2018-01-01, 1, AWAY),\n" +
                "(17, BASKETBALL, 17, 2018-01-08, 2, HOME),\n" +
                "(17, BASKETBALL, 17, 2018-01-15, 3, AWAY),\n" +
                "(17, BASKETBALL, 17, 2018-01-22, 4, AWAY),\n" +
                "(17, BASKETBALL, 17, 2018-01-29, 5, AWAY),\n" +
                "(17, BASKETBALL, 17, 2018-02-05, 6, HOME),\n" +
                "(17, BASKETBALL, 17, 2018-02-12, 7, HOME),\n" +
                "(17, BASKETBALL, 17, 2018-02-19, 8, AWAY),\n" +
                "(17, BASKETBALL, 17, 2018-02-26, 9, AWAY),\n" +
                "(17, BASKETBALL, 17, 2018-03-05, 10, HOME),\n" +
                "(18, BASKETBALL, 18, 2018-01-01, 1, AWAY),\n" +
                "(18, BASKETBALL, 18, 2018-01-08, 2, HOME),\n" +
                "(18, BASKETBALL, 18, 2018-01-15, 3, HOME),\n" +
                "(18, BASKETBALL, 18, 2018-01-22, 4, AWAY),\n" +
                "(18, BASKETBALL, 18, 2018-01-29, 5, AWAY),\n" +
                "(18, BASKETBALL, 18, 2018-02-05, 6, AWAY),\n" +
                "(18, BASKETBALL, 18, 2018-02-12, 7, HOME),\n" +
                "(18, BASKETBALL, 18, 2018-02-19, 8, AWAY),\n" +
                "(18, BASKETBALL, 18, 2018-02-26, 9, AWAY),\n" +
                "(18, BASKETBALL, 18, 2018-03-05, 10, HOME),\n" +
                "(19, BASKETBALL, 19, 2018-01-01, 1, HOME),\n" +
                "(19, BASKETBALL, 19, 2018-01-08, 2, HOME),\n" +
                "(19, BASKETBALL, 19, 2018-01-15, 3, AWAY),\n" +
                "(19, BASKETBALL, 19, 2018-01-22, 4, HOME),\n" +
                "(19, BASKETBALL, 19, 2018-01-29, 5, AWAY),\n" +
                "(19, BASKETBALL, 19, 2018-02-05, 6, HOME),\n" +
                "(19, BASKETBALL, 19, 2018-02-12, 7, AWAY),\n" +
                "(19, BASKETBALL, 19, 2018-02-19, 8, HOME),\n" +
                "(19, BASKETBALL, 19, 2018-02-26, 9, HOME),\n" +
                "(19, BASKETBALL, 19, 2018-03-05, 10, AWAY),\n" +
                "(20, BASKETBALL, 20, 2018-01-01, 1, HOME),\n" +
                "(20, BASKETBALL, 20, 2018-01-08, 2, HOME),\n" +
                "(20, BASKETBALL, 20, 2018-01-15, 3, AWAY),\n" +
                "(20, BASKETBALL, 20, 2018-01-22, 4, AWAY),\n" +
                "(20, BASKETBALL, 20, 2018-01-29, 5, HOME),\n" +
                "(20, BASKETBALL, 20, 2018-02-05, 6, HOME),\n" +
                "(20, BASKETBALL, 20, 2018-02-12, 7, AWAY),\n" +
                "(20, BASKETBALL, 20, 2018-02-19, 8, HOME),\n" +
                "(20, BASKETBALL, 20, 2018-02-26, 9, AWAY),\n" +
                "(20, BASKETBALL, 20, 2018-03-05, 10, AWAY);";
        stat.executeUpdate(sql);

        sql = "INSERT INTO TeamStats (st_hometeamID, st_awayteamID, st_sport, st_matchup, st_score1, st_score2) VALUES\n" +
                "(1, 2, FOOTBALL, 2018-01-01, 21, 12),\n" +
                "(3, 5, FOOTBALL, 2018-01-01, 17, 21),\n" +
                "(4, 7, FOOTBALL, 2018-01-01, 35, 18),\n" +
                "(6, 8, FOOTBALL, 2018-01-01, 49, 6),\n" +
                "(9, 10, FOOTBALL, 2018-01-01, 16, 14),\n" +
                "(1, 3, FOOTBALL, 2018-01-08, 14, 18),\n" +
                "(5, 2, FOOTBALL, 2018-01-08, 23, 21),\n" +
                "(4, 6, FOOTBALL, 2018-01-08, 42, 35),\n" +
                "(7, 9, FOOTBALL, 2018-01-08, 18, 24),\n" +
                "(8, 10, FOOTBALL, 2018-01-08, 6, 16),\n" +
                "(1, 4, FOOTBALL, 2018-01-15, 21, 12),\n" +
                "(2, 6, FOOTBALL, 2018-01-15, 17, 21),\n" +
                "(3, 7, FOOTBALL, 2018-01-15, 35, 18),\n" +
                "(5, 10, FOOTBALL, 2018-01-15, 49, 6),\n" +
                "(9, 8, FOOTBALL, 2018-01-15, 16, 14),\n" +
                "(1, 5, FOOTBALL, 2018-01-22, 12, 12),\n" +
                "(2, 3, FOOTBALL, 2018-01-22, 19, 22),\n" +
                "(4, 10, FOOTBALL, 2018-01-22, 15, 14),\n" +
                "(6, 9, FOOTBALL, 2018-01-22, 43, 29),\n" +
                "(7, 8, FOOTBALL, 2018-01-22, 16, 18),\n" +
                "(1, 6, FOOTBALL, 2018-01-29, 35, 37),\n" +
                "(2, 10, FOOTBALL, 2018-01-29, 27, 21),\n" +
                "(3, 9, FOOTBALL, 2018-01-29, 32, 14),\n" +
                "(4, 8, FOOTBALL, 2018-01-29, 12, 34),\n" +
                "(5, 7, FOOTBALL, 2018-01-29, 24, 18),\n" +
                "(1, 7, FOOTBALL, 2018-02-05, 21, 12),\n" +
                "(2, 4, FOOTBALL, 2018-02-05, 17, 21),\n" +
                "(3, 8, FOOTBALL, 2018-02-05, 35, 18),\n" +
                "(5, 9, FOOTBALL, 2018-02-05, 49, 6),\n" +
                "(6, 10, FOOTBALL, 2018-02-05, 16, 14),\n" +
                "(1, 8, FOOTBALL, 2018-02-12, 22, 32),\n" +
                "(2, 9, FOOTBALL, 2018-02-12, 14, 22),\n" +
                "(3, 6, FOOTBALL, 2018-02-12, 31, 10),\n" +
                "(4, 5, FOOTBALL, 2018-02-12, 45, 52),\n" +
                "(7, 10, FOOTBALL, 2018-02-12, 11, 16),\n" +
                "(1, 9, FOOTBALL, 2018-02-19, 14, 22),\n" +
                "(2, 7, FOOTBALL, 2018-02-19, 19, 11),\n" +
                "(3, 10, FOOTBALL, 2018-02-19, 32, 28),\n" +
                "(5, 4, FOOTBALL, 2018-02-19, 34, 23),\n" +
                "(8, 6, FOOTBALL, 2018-02-19, 26, 24),\n" +
                "(1, 10, FOOTBALL, 2018-02-26, 24, 32),\n" +
                "(2, 4, FOOTBALL, 2018-02-26, 27, 11),\n" +
                "(9, 3, FOOTBALL, 2018-02-26, 25, 12),\n" +
                "(6, 5, FOOTBALL, 2018-02-26, 19, 21),\n" +
                "(8, 7, FOOTBALL, 2018-02-26, 15, 34),\n" +
                "(1, 3, FOOTBALL, 2018-03-05, 31, 15),\n" +
                "(4, 2, FOOTBALL, 2018-03-05, 11, 23),\n" +
                "(7, 5, FOOTBALL, 2018-03-05, 33, 48),\n" +
                "(9, 6, FOOTBALL, 2018-03-05, 19, 32),\n" +
                "(10, 8, FOOTBALL, 2018-03-05, 16, 14);";
        stat.executeUpdate(sql);

        sql = "INSERT INTO School (sc_schoolID, sc_city, sc_state, sc_mascot, sc_name) VALUES\n" +
                "(1, FAIRFIELD, CA, SALLY, RODRIGUEZ),\n" +
                "(2, FAIRFIELD, CA, JEFF, FAIRFIELD),\n" +
                "(3, LOS ANGELES, CA, MIKE, ARLETA),\n" +
                "(4, SAN DIEGO, CA, JIM, JEFFERSON),\n" +
                "(5, RENO, NV, LILY, WASHINGTON),\n" +
                "(6, PHOENIX, AZ, KANYE, LUMBAR),\n" +
                "(7, SEATTLE, WA, TANNER, LINCOLN),\n" +
                "(8, NEW YORK, NY, MITCH, PRESIDENTIAL),\n" +
                "(9, MEMPHIS, TN, DOUG, RIVERSIDE),\n" +
                "(10, INGLEWOOD, CA, SNOOP, INGLEWOOD TECH);";
        stat.executeUpdate(sql);

        sql = "INSERT INTO Football (f_teamID, f_passyards, f_rushyards, f_tackles, f_receptions, f_sacks, f_ointerceptions, f_forcefumbles, f_touchdowns, f_receivingyards, f_fumbles, f_dinterceptions) VALUES\n" +
                "(1, 220, 100, 65, 20, 4, 2, 3, 4, 220, 1, 1),\n" +
                "(2, 240, 120, 60, 30, 3, 2, 2, 3, 240, 2, 2),\n" +
                "(3, 300, 80, 79, 24, 10, 1, 1, 5, 300, 2, 3),\n" +
                "(4, 150, 150, 50, 25, 3, 3, 2, 2, 150, 1, 1),\n" +
                "(5, 200, 80, 40, 23, 6, 1, 4, 3, 200, 3, 2),\n" +
                "(6, 210, 120, 30, 31, 7, 2, 2, 1, 210, 2, 2),\n" +
                "(7, 225, 60, 62, 21, 2, 1, 1, 1, 225, 1, 1),\n" +
                "(8, 310, 150, 55, 41, 5, 4, 2, 4, 310, 4, 2),\n" +
                "(9, 185, 80, 57, 31, 9, 1, 1, 2, 185, 1, 2),\n" +
                "(10, 204, 200, 54, 20, 15, 1, 5, 3, 204, 1, 2);";
        stat.executeUpdate(sql);

        sql = "INSERT INTO Basketball (b_teamID, b_points, b_rebounds, b_assists, b_steals, b_blocks, b_turnovers) VALUES\n" +
                "(11, 90, 30, 20, 5, 5, 15),\n" +
                "(12, 102, 28, 22, 3, 2, 16),\n" +
                "(13, 94, 31, 21, 2, 3, 19),\n" +
                "(14, 93, 34, 17, 6, 6, 20),\n" +
                "(15, 100, 36, 24, 9, 9, 11),\n" +
                "(16, 99, 29, 22, 8, 10, 13),\n" +
                "(17, 96, 27, 18, 2, 2, 18),\n" +
                "(18, 101, 32, 19, 4, 4, 17),\n" +
                "(19, 98, 31, 23, 7, 3, 10),\n" +
                "(20, 91, 30, 21, 5, 7, 19);";
        stat.executeUpdate(sql);

        sql = "INSERT INTO FPlayerStats (pl_playerID, pl_passyards, pl_rushyards, pl_receptions, pl_ointerceptions, pl_touchdowns, pl_receivingyards, pl_fumbles, pl_dinterceptions, pl_sacks, pl_tackles, pl_forcefumbles) VALUES\n" +
                "(1, 300, 10, 0, 6, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(2, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(3, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(4, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(5, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(6, 180, 120, 0, 1, 3, 0, 2, 0, 0, 0, 0),\n" +
                "(7, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(8, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(9, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(10, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(11, 400, 20, 0, 0, 6, 0, 0, 0, 0, 0, 0),\n" +
                "(12, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(13, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(14, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(15, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(16, 350, 50, 0, 0, 3, 0, 3, 0, 0, 0, 0),\n" +
                "(17, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(18, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(19, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(20, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(21, 300, 10, 0, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(22, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(23, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(24, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(25, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(26, 200, 30, 0, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(27, 0, 100, 10, 0, 2, 0, , 0, 0, 0, 0),\n" +
                "(28, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(29, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(30, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(31, 310, 40, 10, 1, 4, 0, 1, 0, 0, 0, 0),\n" +
                "(32, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(33, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(34, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(35, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(36, 335, 55, 0, 1, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(37, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(38, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(39, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(40, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(41, 290, 40, 0, 4, 1, 0, 1, 0, 0, 0, 0),\n" +
                "(42, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(43, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(44, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(45, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(46, 285, 50, 0, 2, 3, 0, 1, 0, 0, 0, 0),\n" +
                "(47, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(48, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(49, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),\n" +
                "(50, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0);";
        stat.executeUpdate(sql);

        sql = "INSERT INTO BPlayerStats (bp_playerID, bp_rebounds, bp_assists, bp_steals, bp_blocks, bp_turnovers, bp_points) VALUES\n" +
                "(51, 4, 9, 2, 1, 4, 21),\n" +
                "(52, 5, 8, 4, 2, 3, 32),\n" +
                "(53, 7, 4, 3, 4, 2, 12),\n" +
                "(54, 9, 4, 2, 3, 1, 27),\n" +
                "(55, 14, 3, 1, 2, 7, 12),\n" +
                "(56, 2, 11, 6, 6, 4, 23),\n" +
                "(57, 4, 9, 5, 2, 6, 41),\n" +
                "(58, 5, 5, 3, 1, 3, 23),\n" +
                "(59, 9, 3, 2, 2, 2, 12),\n" +
                "(60, 10, 2, 8, 3, 9, 11),\n" +
                "(61, 2, 14, 10, 2, 3, 31),\n" +
                "(62, 5, 5, 1, 3, 2, 12),\n" +
                "(63, 9, 8, 2, 6, 1, 23),\n" +
                "(64, 8, 3, 3, 3, 4, 12),\n" +
                "(65, 20, 4, 4, 2, 2, 18),\n" +
                "(66, 1, 17, 5, 1, 1, 19),\n" +
                "(67, 7, 6, 3, 2, 4, 21),\n" +
                "(68, 9, 8, 2, 5, 7, 23),\n" +
                "(69, 19, 12, 1, 7, 3, 27),\n" +
                "(70, 14, 2, 4, 4, 9, 12),\n" +
                "(71, 7, 19, 7, 1, 3, 21),\n" +
                "(72, 3, 2, 5, 2, 2, 22),\n" +
                "(73, 12, 4, 3, 5, 1, 32),\n" +
                "(74, 11, 4, 7, 6, 5, 11),\n" +
                "(75, 9, 1, 1, 2, 8, 7),\n" +
                "(76, 5, 19, 2, 5, 1, 32),\n" +
                "(77, 2, 12, 9, 3, 2, 21),\n" +
                "(78, 12, 4, 8, 1, 6, 12),\n" +
                "(79, 14, 1, 6, 3, 4, 20),\n" +
                "(80, 10, 2, 4, 2, 8, 12),\n" +
                "(81, 6, 17, 1, 5, 3, 18),\n" +
                "(82, 2, 12, 7, 8, 2, 12),\n" +
                "(83, 12, 4, 8, 2, 4, 20),\n" +
                "(84, 12, 6, 4, 3, 8, 15),\n" +
                "(85, 14, 3, 8, 2, 3, 12),\n" +
                "(86, 2, 10, 3, 1, 4, 15),\n" +
                "(87, 7, 12, 1, 2, 2, 21),\n" +
                "(88, 9, 15, 7, 6, 6, 23),\n" +
                "(89, 10, 7, 3, 3, 9, 18),\n" +
                "(90, 13, 2, 3, 8, 3, 19),\n" +
                "(91, 2, 20, 5, 3, 1, 10),\n" +
                "(92, 5, 2, 2, 1, 8, 15),\n" +
                "(93, 7, 1, 1, 2, 3, 18),\n" +
                "(94, 9, 4, 6, 4, 6, 21),\n" +
                "(95, 18, 1, 4, 6, 3, 18),\n" +
                "(96, 4, 19, 2, 1, 2, 24),\n" +
                "(97, 2, 12, 1, 6, 4, 31),\n" +
                "(98, 12, 4, 8, 3, 5, 32),\n" +
                "(99, 11, 2, 6, 2, 8, 21),\n" +
                "(100, 18, 1, 4, 8, 4, 19);\n";
        stat.executeUpdate(sql);

    }
}
