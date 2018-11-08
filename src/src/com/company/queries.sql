CREATE TABLE Basketball (
    b_teamID    VARCHAR (255) NOT NULL,
    b_points    INTEGER (4),
    b_rebounds  INTEGER (4),
    b_assists   INTEGER (4),
    b_steals    INTEGER (5),
    b_blocks    INTEGER (5),
    b_turnovers INTEGER (4)   NOT NULL
);

CREATE TABLE BPlayerStats (
    bp_playerID  VARCHAR (255) NOT NULL,
    bp_rebounds  INTEGER (5),
    bp_assists   INTEGER (5),
    bp_steals    INTEGER (5),
    bp_blocks    INTEGER (5),
    bp_turnovers INTEGER (5)
);


CREATE TABLE Coach (
    c_name     CHAR (50)     NOT NULL,
    c_coachID  VARCHAR (255) NOT NULL,
    c_teamID   VARCHAR (255) NOT NULL,
    c_sport    CHAR (50)     NOT NULL,
    c_league   VARCHAR (255) NOT NULL,
    c_division VARCHAR (255) NOT NULL,
    c_schoolID VARCHAR (255) NOT NULL
);

CREATE TABLE Football (
    f_teamID         VARCHAR (255) NOT NULL,
    f_passyards      INTEGER (4),
    f_rushyards      INTEGER (4),
    f_tackles        INTEGER (4),
    [f_receptions ]  INTEGER (5),
    f_sacks          INTEGER (5),
    f_ointerceptions INTEGER (4),
    f_forcefumbles   INTEGER (4),
    f_touchdowns     INTEGER (5),
    f_receivingyards INTEGER (5),
    f_fumbles        INTEGER (4),
    f_dinterceptions INTEGER (4)
);

CREATE TABLE FPlayerStats (
    pl_playerID       VARCHAR (255) NOT NULL,
    pl_passyards      INTEGER (5),
    pl_rushyards      INTEGER (5),
    pl_receptions     INTEGER (5),
    pl_ointerceptions INTEGER (5),
    pl_touchdowns     INTEGER (5),
    pl_receivingyards INTEGER (5),
    pl_fumbles        INTEGER (5),
    pl_dinterceptions INTEGER (5),
    pl_sacks          INTEGER (5),
    pl_tackles        INTEGER (5),
    pl_forcefumbles   INTEGER (5)
);

CREATE TABLE Player (
    p_name      CHAR (50)      NOT NULL,
    p_playerID  VARCHAR (255)  NOT NULL,
    p_teamID    VARCHAR (255)  NOT NULL,
    p_sport     CHAR (50)      NOT NULL,
    [p_height ] DECIMAL (3, 2) NOT NULL,
    p_weight    DECIMAL (3, 1) NOT NULL,
    p_position  CHAR (5)       NOT NULL
);

CREATE TABLE Schedule (
    s_teamID   VARCHAR (255) NOT NULL,
    s_sport    CHAR (50)     NOT NULL,
    s_schoolID VARCHAR (255) NOT NULL,
    s_matchup  DATE          NOT NULL,
    s_week     INTEGER (2)   NOT NULL,
    s_location CHAR (50)     NOT NULL
);

CREATE TABLE School (
    sc_schoolID VARCHAR (255) NOT NULL,
    sc_city     CHAR (50)     NOT NULL,
    sc_state    CHAR (50)     NOT NULL,
    sc_mascot   CHAR (50)     NOT NULL,
    sc_name     CHAR (50)     NOT NULL
);

CREATE TABLE Team (
    t_name     CHAR (50)     NOT NULL,
    t_teamID   VARCHAR (255) NOT NULL,
    t_sport    CHAR (50)     NOT NULL,
    t_league   VARCHAR (255) NOT NULL,
    t_division VARCHAR (255) NOT NULL,
    t_schoolID VARCHAR (255) NOT NULL
);

CREATE TABLE TeamStats (
    st_teamID  VARCHAR (255) NOT NULL,
    st_sport   CHAR (50)     NOT NULL,
    st_matchup DATE          NOT NULL,
    st_score1  INTEGER (5)   NOT NULL,
    st_score2  INTEGER (5)   NOT NULL
);

INSERT INTO Coach (c_name, c_coachID, c_teamID, c_sport, c_league, c_division, c_schoolID) VALUES
(JOHN GRUDEN, 1, 1, FOOTBALL, VALLEY, 1, 1),
(JAY GRUDEN, 2, 2, FOOTBALL, VALLEY, 1, 2),
(JOHN MADDEN, 3, 3, FOOTBALL, VALLEY, 1, 3),
(FLORIN RUSU, 4, 4, FOOTBALL, VALLEY, 1, 4),
(MIKE MICHAELS, 5, 5, FOOTBALL, VALLEY, 1, 5),
(MIKE JONES, 6, 6, FOOTBALL, MEL, 2, 6),
(MIKE TOMLINSON, 7, 7, FOOTBALL, MEL, 2, 7),
(JAMES WHITE, 8, 8, FOOTBALL, MEL, 2, 8),
(TOM HOTHEM, 9, 9, FOOTBALL, MEL, 2, 9),
(JIM BROWN, 10, 10, FOOTBALL, MEL, 2, 10)
(MIKE BROWN, 11, 11, BASKETBALL, VALLEY, 1, 1),
(GREG POPOVICH, 12, 12, BASKETBALL, VALLEY, 1, 2),
(STEVE KERR, 13, 13, BASKETBALL, VALLEY, 1, 3),
(KOBE BRYANT, 14, 14, BASKETBALL, VALLEY, 1, 4),
(MICHAEL JORDAN, 15, 15, BASKETBALL, VALLEY, 1, 5),
(TIM TEBOW, 16, 16, BASKETBALL, MEL, 2, 6),
(DRAKE, 17, 17, BASKETBALL, MEL, 2, 7),
(LIL WAYNE, 18, 18, BASKETBALL, MEL, 2, 8),
(DANIEL HERNANDEZ, 19, 19, BASKETBALL, MEL, 2, 9),
(YOUNG THUG, 20, 20, BASKETBALL, MEL, 2, 10);

INSERT INTO Team (t_name, t_teamID, t_sport, t_league, t_division, t_schoolID) VALUES
(RAIDERS, 1, FOOTBALL, VALLEY, 1, 1),
(JETS, 2, FOOTBALL, VALLEY, 1, 2),
(SEAHAWKS, 3, FOOTBALL, VALLEY, 1, 3),
(RAMS, 4, FOOTBALL, VALLEY, 1, 4),
(COLTS, 5, FOOTBALL, VALLEY, 1, 5),
(WILDCATS, 6, FOOTBALL, MEL, 2, 6),
(MUSTANGS, 7, FOOTBALL, MEL, 2, 7),
(HOOSIERS, 8, FOOTBALL, MEL, 2, 8),
(LADIES, 9, FOOTBALL, MEL, 2, 9),
(COOTERS, 10, FOOTBALL, MEL, 2, 10),
(RAIDERS, 11, BASKETBALL, VALLEY, 1, 1),
(JETS, 12, BASKETBALL, VALLEY, 1, 2),
(SEAHAWKS, 13, BASKETBALL, VALLEY, 1, 3),
(RAMS, 14, BASKETBALL, VALLEY, 1, 4),
(COLTS, 15, BASKETBALL, VALLEY, 1, 5),
(WILDCATS, 16, BASKETBALL, MEL, 2, 6),
(MUSTANGS, 17, BASKETBALL, MEL, 2, 7),
(HOOSIERS, 18, BASKETBALL, MEL, 2, 8),
(LADIES, 19, BASKETBALL, MEL, 2, 9),
(COOTERS, 20, BASKETBALL, MEL, 2, 10);

INSERT INTO Player (p_name, p_playerID, p_teamID, p_sport, p_height, p_weight, p_position) VALUES
(TIM, 1, 1, FOOTBALL, 72, 180, QB),
(BOB, 2, 1, FOOTBALL, 72, 180, HB),
(JOE, 3, 1, FOOTBALL, 72, 180, CB),
(TRE, 4, 1, FOOTBALL, 72, 180, MLB),
(TEE, 5, 1, FOOTBALL, 72, 180, S),
(TIM, 6, 2, FOOTBALL, 72, 180, QB),
(BOB, 7, 2, FOOTBALL, 72, 180, HB),
(JOE, 8, 2, FOOTBALL, 72, 180, CB),
(TRE, 9, 2, FOOTBALL, 72, 180, MLB),
(TEE, 10, 2, FOOTBALL, 72, 180, S),
(TIM, 11, 3, FOOTBALL, 72, 180, QB),
(BOB, 12, 3, FOOTBALL, 72, 180, HB),
(JOE, 13, 3, FOOTBALL, 72, 180, CB),
(TRE, 14, 3, FOOTBALL, 72, 180, MLB),
(TEE, 15, 3, FOOTBALL, 72, 180, S),
(TIM, 16, 4, FOOTBALL, 72, 180, QB),
(BOB, 17, 4, FOOTBALL, 72, 180, HB),
(JOE, 18, 4, FOOTBALL, 72, 180, CB),
(TRE, 19, 4, FOOTBALL, 72, 180, MLB),
(TEE, 20, 4, FOOTBALL, 72, 180, S),
(TIM, 21, 5, FOOTBALL, 72, 180, QB),
(BOB, 22, 5, FOOTBALL, 72, 180, HB),
(JOE, 23, 5, FOOTBALL, 72, 180, CB),
(TRE, 24, 5, FOOTBALL, 72, 180, MLB),
(TEE, 25, 5, FOOTBALL, 72, 180, S),
(TIM, 26, 6, FOOTBALL, 72, 180, QB),
(BOB, 27, 6, FOOTBALL, 72, 180, HB),
(JOE, 28, 6, FOOTBALL, 72, 180, CB),
(TRE, 29, 6, FOOTBALL, 72, 180, MLB),
(TEE, 30, 6, FOOTBALL, 72, 180, S),
(TIM, 31, 7, FOOTBALL, 72, 180, QB),
(BOB, 32, 7, FOOTBALL, 72, 180, HB),
(JOE, 33, 7, FOOTBALL, 72, 180, CB),
(TRE, 34, 7, FOOTBALL, 72, 180, MLB),
(TEE, 35, 7, FOOTBALL, 72, 180, S),
(TIM, 36, 8, FOOTBALL, 72, 180, QB),
(BOB, 37, 8, FOOTBALL, 72, 180, HB),
(JOE, 38, 8, FOOTBALL, 72, 180, CB),
(TRE, 39, 8, FOOTBALL, 72, 180, MLB),
(TEE, 40, 8, FOOTBALL, 72, 180, S),
(TIM, 41, 9, FOOTBALL, 72, 180, QB),
(BOB, 42, 9, FOOTBALL, 72, 180, HB),
(JOE, 43, 9, FOOTBALL, 72, 180, CB),
(TRE, 44, 9, FOOTBALL, 72, 180, MLB),
(TEE, 45, 9, FOOTBALL, 72, 180, S),
(TIM, 46, 10, FOOTBALL, 72, 180, QB),
(BOB, 47, 10, FOOTBALL, 72, 180, HB),
(JOE, 48, 10, FOOTBALL, 72, 180, CB),
(TRE, 49, 10, FOOTBALL, 72, 180, MLB),
(TEE, 50, 10, FOOTBALL, 72, 180, S),
(TIM, 51, 11, BASKETBALL, 72, 180, QB),
(BOB, 52, 11, BASKETBALL, 72, 180, SG),
(JOE, 53, 11, BASKETBALL, 72, 180, SF),
(TRE, 54, 11, BASKETBALL, 72, 180, PF),
(TEE, 55, 11, BASKETBALL, 72, 180, C),
(TIM, 56, 12, BASKETBALL, 72, 180, QB),
(BOB, 57, 12, BASKETBALL, 72, 180, SG),
(JOE, 58, 12, BASKETBALL, 72, 180, SF),
(TRE, 59, 12, BASKETBALL, 72, 180, PF),
(TEE, 60, 12, BASKETBALL, 72, 180, C),
(TIM, 61, 13, BASKETBALL, 72, 180, QB),
(BOB, 62, 13, BASKETBALL, 72, 180, SG),
(JOE, 63, 13, BASKETBALL, 72, 180, SF),
(TRE, 64, 13, BASKETBALL, 72, 180, PF),
(TEE, 65, 13, BASKETBALL, 72, 180, C),
(TIM, 66, 14, BASKETBALL, 72, 180, QB),
(BOB, 67, 14, BASKETBALL, 72, 180, SG),
(JOE, 68, 14, BASKETBALL, 72, 180, SF),
(TRE, 69, 14, BASKETBALL, 72, 180, PF),
(TEE, 70, 14, BASKETBALL, 72, 180, C),
(TIM, 71, 15, BASKETBALL, 72, 180, QB),
(BOB, 72, 15, BASKETBALL, 72, 180, SG),
(JOE, 73, 15, BASKETBALL, 72, 180, SF),
(TRE, 74, 15, BASKETBALL, 72, 180, PF),
(TEE, 75, 15, BASKETBALL, 72, 180, C),
(TIM, 76, 16, BASKETBALL, 72, 180, QB),
(BOB, 77, 16, BASKETBALL, 72, 180, SG),
(JOE, 78, 16, BASKETBALL, 72, 180, SF),
(TRE, 79, 16, BASKETBALL, 72, 180, PF),
(TEE, 80, 16, BASKETBALL, 72, 180, C),
(TIM, 81, 17, BASKETBALL, 72, 180, QB),
(BOB, 82, 17, BASKETBALL, 72, 180, SG),
(JOE, 83, 17, BASKETBALL, 72, 180, SF),
(TRE, 84, 17, BASKETBALL, 72, 180, PF),
(TEE, 85, 17, BASKETBALL, 72, 180, C),
(TIM, 86, 18, BASKETBALL, 72, 180, QB),
(BOB, 87, 18, BASKETBALL, 72, 180, SG),
(JOE, 88, 18, BASKETBALL, 72, 180, SF),
(TRE, 89, 18, BASKETBALL, 72, 180, PF),
(TEE, 90, 18, BASKETBALL, 72, 180, C),
(TIM, 91, 19, BASKETBALL, 72, 180, QB),
(BOB, 92, 19, BASKETBALL, 72, 180, SG),
(JOE, 93, 19, BASKETBALL, 72, 180, SF),
(TRE, 94, 19, BASKETBALL, 72, 180, PF),
(TEE, 95, 19, BASKETBALL, 72, 180, C),
(TIM, 96, 20, BASKETBALL, 72, 180, QB),
(BOB, 97, 20, BASKETBALL, 72, 180, SG),
(JOE, 98, 20, BASKETBALL, 72, 180, SF),
(TRE, 99, 20, BASKETBALL, 72, 180, PF),
(TEE, 100, 20, BASKETBALL, 72, 180, C);

INSERT INTO Schedule (s_teamID, s_sport, s_schoolID, s_matchup, s_week, s_location) VALUES

INSERT INTO TeamStats (st_teamID, st_sport, st_matchup, st_score1, st_score2) VALUES

INSERT INTO School (sc_schoolID, sc_city, sc_state, sc_mascot, sc_name) VALUES
(1, FAIRFIELD, CA, SALLY, RODRIGUEZ),
(2, FAIRFIELD, CA, JEFF, FAIRFIELD),
(3, LOS ANGELES, CA, MIKE, ARLETA),
(4, SAN DIEGO, CA, JIM, JEFFERSON),
(5, RENO, NV, LILY, WASHINGTON),
(6, PHOENIX, AZ, KANYE, LUMBAR),
(7, SEATTLE, WA, TANNER, LINCOLN),
(8, NEW YORK, NY, MITCH, PRESIDENTIAL),
(9, MEMPHIS, TN, DOUG, RIVERSIDE),
(10, INGLEWOOD, CA, SNOOP, INGLEWOOD TECH);

INSERT INTO Football (f_teamID, f_passyards, f_rushyards, f_tackles, f_receptions, f_sacks, f_ointerceptions, f_forcefumbles, f_touchdowns, f_receivingyards, f_fumbles, f_dinterceptions) VALUES

INSERT INTO Basketball (b_teamID, b_points, b_rebounds, b_assists, b_steals, b_blocks, b_turnovers) VALUES
(11, 90, 30, 20, 5, 5, 15),
(12, 102, 28, 22, 3, 2, 16),
(13, 94, 31, 21, 2, 3, 19),
(14, 93, 34, 17, 6, 6, 20),
(15, 100, 36, 24, 9, 9, 11),
(16, 99, 29, 22, 8, 10, 13),
(17, 96, 27, 18, 2, 2, 18),
(18, 101, 32, 19, 4, 4, 17),
(19, 98, 31, 23, 7, 3, 10),
(20, 91, 30, 21, 5, 7, 19);

INSERT INTO FPlayerStats (pl_name, pl_playerID, pl_position, pl_passyards, pl_rushyards, pl_receptions, pl_ointerceptions, pl_touchdowns, pl_receivingyards, pl_fumbles, pl_dinterceptions, pl_sacks, pl_tackles, pl_forcefumbles) VALUES

INSERT INTO BPlayerStats (bp_name, bp_playerID, bp_position, bp_rebounds, bp_assists, bp_steals, bp_blocks, bp_turnovers) VALUES
