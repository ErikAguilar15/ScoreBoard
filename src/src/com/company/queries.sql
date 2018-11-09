CREATE TABLE IF NOT EXISTS Basketball (
    b_teamID    VARCHAR (255) NOT NULL,
    b_points    INTEGER (4),
    b_rebounds  INTEGER (4),
    b_assists   INTEGER (4),
    b_steals    INTEGER (5),
    b_blocks    INTEGER (5),
    b_turnovers INTEGER (4)   NOT NULL
);

CREATE TABLE IF NOT EXISTS BPlayerStats (
    bp_playerID  VARCHAR (255) NOT NULL,
    bp_rebounds  INTEGER (5),
    bp_assists   INTEGER (5),
    bp_steals    INTEGER (5),
    bp_blocks    INTEGER (5),
    bp_turnovers INTEGER (5)
);


CREATE TABLE IF NOT EXISTS Coach (
    c_name     CHAR (50)     NOT NULL,
    c_coachID  VARCHAR (255) NOT NULL,
    c_teamID   VARCHAR (255) NOT NULL,
    c_sport    CHAR (50)     NOT NULL,
    c_league   VARCHAR (255) NOT NULL,
    c_division VARCHAR (255) NOT NULL,
    c_schoolID VARCHAR (255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Football (
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

CREATE TABLE IF NOT EXISTS FPlayerStats (
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

CREATE TABLE IF NOT EXISTS Player (
    p_name      CHAR (50)      NOT NULL,
    p_playerID  VARCHAR (255)  NOT NULL,
    p_teamID    VARCHAR (255)  NOT NULL,
    p_sport     CHAR (50)      NOT NULL,
    p_height  DECIMAL (3, 2) NOT NULL,
    p_weight    DECIMAL (3, 1) NOT NULL,
    p_position  CHAR (5)       NOT NULL
);

CREATE TABLE IF NOT EXISTS Schedule (
    s_teamID   VARCHAR (255) NOT NULL,
    s_sport    CHAR (50)     NOT NULL,
    s_schoolID VARCHAR (255) NOT NULL,
    s_matchup  DATE          NOT NULL,
    s_week     INTEGER (2)   NOT NULL,
    s_location CHAR (50)     NOT NULL
);

CREATE TABLE IF NOT EXISTS School (
    sc_schoolID VARCHAR (255) NOT NULL,
    sc_city     CHAR (50)     NOT NULL,
    sc_state    CHAR (50)     NOT NULL,
    sc_mascot   CHAR (50)     NOT NULL,
    sc_name     CHAR (50)     NOT NULL
);

CREATE TABLE IF NOT EXISTS Team (
    t_name     CHAR (50)     NOT NULL,
    t_teamID   VARCHAR (255) NOT NULL,
    t_sport    CHAR (50)     NOT NULL,
    t_league   VARCHAR (255) NOT NULL,
    t_division VARCHAR (255) NOT NULL,
    t_schoolID VARCHAR (255) NOT NULL
);

CREATE TABLE IF NOT EXISTS TeamStats (
    st_teamID  VARCHAR (255) NOT NULL,
    st_sport   CHAR (50)     NOT NULL,
    st_matchup DATE          NOT NULL,
    st_score1  INTEGER (5)   NOT NULL,
    st_score2  INTEGER (5)   NOT NULL
);

INSERT INTO Coach (c_name, c_coachID, c_teamID, c_sport, c_league, c_division, c_schoolID) VALUES
('JOHN GRUDEN', 1, 1, 'FOOTBALL', 'VALLEY', 1, 1),
('JAY GRUDEN', 2, 2, 'FOOTBALL', 'VALLEY', 1, 2),
('JOHN MADDEN', 3, 3, 'FOOTBALL', 'VALLEY', 1, 3),
('FLORIN RUSU', 4, 4, 'FOOTBALL', 'VALLEY', 1, 4),
('MIKE MICHAELS', 5, 5, 'FOOTBALL', 'VALLEY', 1, 5),
('MIKE JONES', 6, 6, 'FOOTBALL', 'MEL', 2, 6),
('MIKE TOMLINSON', 7, 7, 'FOOTBALL', 'MEL', 2, 7),
('JAMES WHITE', 8, 8, 'FOOTBALL', 'MEL', 2, 8),
('TOM HOTHEM', 9, 9, 'FOOTBALL', 'MEL', 2, 9),
('JIM BROWN', 10, 10, 'FOOTBALL', 'MEL', 2, 10),
('MIKE BROWN', 11, 11, 'BASKETBALL', 'VALLEY', 1, 1),
('GREG POPOVICH', 12, 12, 'BASKETBALL', 'VALLEY', 1, 2),
('STEVE KERR', 13, 13, 'BASKETBALL', 'VALLEY', 1, 3),
('KOBE BRYANT', 14, 14, 'BASKETBALL', 'VALLEY', 1, 4),
('MICHAEL JORDAN', 15, 15, 'BASKETBALL', 'VALLEY', 1, 5),
('TIM TEBOW', 16, 16, 'BASKETBALL', 'MEL', 2, 6),
('DRAKE', 17, 17, 'BASKETBALL', 'MEL', 2, 7),
('LIL WAYNE', 18, 18, 'BASKETBALL', 'MEL', 2, 8),
('DANIEL HERNANDEZ', 19, 19, 'BASKETBALL', 'MEL', 2, 9),
('YOUNG THUG', 20, 20, 'BASKETBALL', 'MEL', 2, 10);

INSERT INTO Team (t_name, t_teamID, t_sport, t_league, t_division, t_schoolID) VALUES
('RAIDERS', 1, 'FOOTBALL', 'VALLEY', 1, 1),
('JETS', 2, 'FOOTBALL', 'VALLEY', 1, 2),
('SEAHAWKS', 3, 'FOOTBALL', 'VALLEY', 1, 3),
('RAMS', 4, 'FOOTBALL', 'VALLEY', 1, 4),
('COLTS', 5, 'FOOTBALL', 'VALLEY', 1, 5),
('WILDCATS', 6, 'FOOTBALL', 'MEL', 2, 6),
('MUSTANGS', 7, 'FOOTBALL', 'MEL', 2, 7),
('HOOSIERS', 8, 'FOOTBALL', 'MEL', 2, 8),
('LADIES', 9, 'FOOTBALL', 'MEL', 2, 9),
('COOTERS', 10, 'FOOTBALL', 'MEL', 2, 10),
('RAIDERS', 11, 'BASKETBALL', 'VALLEY', 1, 1),
('JETS', 12, 'BASKETBALL', 'VALLEY', 1, 2),
('SEAHAWKS', 13, 'BASKETBALL', 'VALLEY', 1, 3),
('RAMS', 14, 'BASKETBALL', 'VALLEY', 1, 4),
('COLTS', 15, 'BASKETBALL', 'VALLEY', 1, 5),
('WILDCATS', 16, 'BASKETBALL', 'MEL', 2, 6),
('MUSTANGS', 17, 'BASKETBALL', 'MEL', 2, 7),
('HOOSIERS', 18, 'BASKETBALL', 'MEL', 2, 8),
('LADIES', 19, 'BASKETBALL', 'MEL', 2, 9),
('COOTERS', 20, 'BASKETBALL', 'MEL', 2, 10);

INSERT INTO Player (p_name, p_playerID, p_teamID, p_sport, p_height, p_weight, p_position) VALUES
('TIM', 1, 1, 'FOOTBALL', 72, 180, 'QB'),
('BOB', 2, 1, 'FOOTBALL', 72, 180, 'HB'),
('JOE', 3, 1, 'FOOTBALL', 72, 180, 'CB'),
('TRE', 4, 1, 'FOOTBALL', 72, 180, 'MLB'),
('TEE', 5, 1, 'FOOTBALL', 72, 180, 'S'),
('TIM', 6, 2, 'FOOTBALL', 72, 180, 'QB'),
('BOB', 7, 2, 'FOOTBALL', 72, 180, 'HB'),
('JOE', 8, 2, 'FOOTBALL', 72, 180, 'CB'),
('TRE', 9, 2, 'FOOTBALL', 72, 180, 'MLB'),
('TEE', 10, 2, 'FOOTBALL', 72, 180, 'S'),
('TIM', 11, 3, 'FOOTBALL', 72, 180, 'QB'),
('BOB', 12, 3, 'FOOTBALL', 72, 180, 'HB'),
('JOE', 13, 3, 'FOOTBALL', 72, 180, 'CB'),
('TRE', 14, 3, 'FOOTBALL', 72, 180, 'MLB'),
('TEE', 15, 3, 'FOOTBALL', 72, 180, 'S'),
('TIM', 16, 4, 'FOOTBALL', 72, 180, 'QB'),
('BOB', 17, 4, 'FOOTBALL', 72, 180, 'HB'),
('JOE', 18, 4, 'FOOTBALL', 72, 180, 'CB'),
('TRE', 19, 4, 'FOOTBALL', 72, 180, 'MLB'),
('TEE', 20, 4, 'FOOTBALL', 72, 180, 'S'),
('TIM', 21, 5, 'FOOTBALL', 72, 180, 'QB'),
('BOB', 22, 5, 'FOOTBALL', 72, 180, 'HB'),
('JOE', 23, 5, 'FOOTBALL', 72, 180, 'CB'),
('TRE', 24, 5, 'FOOTBALL', 72, 180, 'MLB'),
('TEE', 25, 5, 'FOOTBALL', 72, 180, 'S'),
('TIM', 26, 6, 'FOOTBALL', 72, 180, 'QB'),
('BOB', 27, 6, 'FOOTBALL', 72, 180, 'HB'),
('JOE', 28, 6, 'FOOTBALL', 72, 180, 'CB'),
('TRE', 29, 6, 'FOOTBALL', 72, 180, 'MLB'),
('TEE', 30, 6, 'FOOTBALL', 72, 180, 'S'),
('TIM', 31, 7, 'FOOTBALL', 72, 180, 'QB'),
('BOB', 32, 7, 'FOOTBALL', 72, 180, 'HB'),
('JOE', 33, 7, 'FOOTBALL', 72, 180, 'CB'),
('TRE', 34, 7, 'FOOTBALL', 72, 180, 'MLB'),
('TEE', 35, 7, 'FOOTBALL', 72, 180, 'S'),
('TIM', 36, 8, 'FOOTBALL', 72, 180, 'QB'),
('BOB', 37, 8, 'FOOTBALL', 72, 180, 'HB'),
('JOE', 38, 8, 'FOOTBALL', 72, 180, 'CB'),
('TRE', 39, 8, 'FOOTBALL', 72, 180, 'MLB'),
('TEE', 40, 8, 'FOOTBALL', 72, 180, 'S'),
('TIM', 41, 9, 'FOOTBALL', 72, 180, 'QB'),
('BOB', 42, 9, 'FOOTBALL', 72, 180, 'HB'),
('JOE', 43, 9, 'FOOTBALL', 72, 180, 'CB'),
('TRE', 44, 9, 'FOOTBALL', 72, 180, 'MLB'),
('TEE', 45, 9, 'FOOTBALL', 72, 180, 'S'),
('TIM', 46, 10, 'FOOTBALL', 72, 180, 'QB'),
('BOB', 47, 10, 'FOOTBALL', 72, 180, 'HB'),
('JOE', 48, 10, 'FOOTBALL', 72, 180, 'CB'),
('TRE', 49, 10, 'FOOTBALL', 72, 180, 'MLB'),
('TEE', 50, 10, 'FOOTBALL', 72, 180, 'S'),
('TIM', 51, 11, 'BASKETBALL', 72, 180, 'PG'),
('BOB', 52, 11, 'BASKETBALL', 72, 180, 'SG'),
('JOE', 53, 11, 'BASKETBALL', 72, 180, 'SF'),
('TRE', 54, 11, 'BASKETBALL', 72, 180, 'PF'),
('TEE', 55, 11, 'BASKETBALL', 72, 180, 'C'),
('TIM', 56, 12, 'BASKETBALL', 72, 180, 'PG'),
('BOB', 57, 12, 'BASKETBALL', 72, 180, 'SG'),
('JOE', 58, 12, 'BASKETBALL', 72, 180, 'SF'),
('TRE', 59, 12, 'BASKETBALL', 72, 180, 'PF'),
('TEE', 60, 12, 'BASKETBALL', 72, 180, 'C'),
('TIM', 61, 13, 'BASKETBALL', 72, 180, 'PG'),
('BOB', 62, 13, 'BASKETBALL', 72, 180, 'SG'),
('JOE', 63, 13, 'BASKETBALL', 72, 180, 'SF'),
('TRE', 64, 13, 'BASKETBALL', 72, 180, 'PF'),
('TEE', 65, 13, 'BASKETBALL', 72, 180, 'C'),
('TIM', 66, 14, 'BASKETBALL', 72, 180, 'PG'),
('BOB', 67, 14, 'BASKETBALL', 72, 180, 'SG'),
('JOE', 68, 14, 'BASKETBALL', 72, 180, 'SF'),
('TRE', 69, 14, 'BASKETBALL', 72, 180, 'PF'),
('TEE', 70, 14, 'BASKETBALL', 72, 180, 'C'),
('TIM', 71, 15, 'BASKETBALL', 72, 180, 'PG'),
('BOB', 72, 15, 'BASKETBALL', 72, 180, 'SG'),
('JOE', 73, 15, 'BASKETBALL', 72, 180, 'SF'),
('TRE', 74, 15, 'BASKETBALL', 72, 180, 'PF'),
('TEE', 75, 15, 'BASKETBALL', 72, 180, 'C'),
('TIM', 76, 16, 'BASKETBALL', 72, 180, 'PG'),
('BOB', 77, 16, 'BASKETBALL', 72, 180, 'SG'),
('JOE', 78, 16, 'BASKETBALL', 72, 180, 'SF'),
('TRE', 79, 16, 'BASKETBALL', 72, 180, 'PF'),
('TEE', 80, 16, 'BASKETBALL', 72, 180, 'C'),
('TIM', 81, 17, 'BASKETBALL', 72, 180, 'PG'),
('BOB', 82, 17, 'BASKETBALL', 72, 180, 'SG'),
('JOE', 83, 17, 'BASKETBALL', 72, 180, 'SF'),
('TRE', 84, 17, 'BASKETBALL', 72, 180, 'PF'),
('TEE', 85, 17, 'BASKETBALL', 72, 180, 'C'),
('TIM', 86, 18, 'BASKETBALL', 72, 180, 'PG'),
('BOB', 87, 18, 'BASKETBALL', 72, 180, 'SG'),
('JOE', 88, 18, 'BASKETBALL', 72, 180, 'SF'),
('TRE', 89, 18, 'BASKETBALL', 72, 180, 'PF'),
('TEE', 90, 18, 'BASKETBALL', 72, 180, 'C'),
('TIM', 91, 19, 'BASKETBALL', 72, 180, 'PG'),
('BOB', 92, 19, 'BASKETBALL', 72, 180, 'SG'),
('JOE', 93, 19, 'BASKETBALL', 72, 180, 'SF'),
('TRE', 94, 19, 'BASKETBALL', 72, 180, 'PF'),
('TEE', 95, 19, 'BASKETBALL', 72, 180, 'C'),
('TIM', 96, 20, 'BASKETBALL', 72, 180, 'PG'),
('BOB', 97, 20, 'BASKETBALL', 72, 180, 'SG'),
('JOE', 98, 20, 'BASKETBALL', 72, 180, 'SF'),
('TRE', 99, 20, 'BASKETBALL', 72, 180, 'PF'),
('TEE', 100, 20, 'BASKETBALL', 72, 180, 'C');

INSERT INTO Schedule (s_teamID, s_sport, s_schoolID, s_matchup, s_week, s_location) VALUES
(1, FOOTBALL, 1, 2018-01-01, 1, HOME),
(1, FOOTBALL, 1, 2018-01-08, 2, AWAY),
(1, FOOTBALL, 1, 2018-01-15, 3, HOME),
(1, FOOTBALL, 1, 2018-01-22, 4, HOME),
(1, FOOTBALL, 1, 2018-01-29, 5, HOME),
(1, FOOTBALL, 1, 2018-02-05, 6, AWAY),
(1, FOOTBALL, 1, 2018-02-12, 7, AWAY),
(1, FOOTBALL, 1, 2018-02-19, 8, AWAY),
(1, FOOTBALL, 1, 2018-02-26, 9, HOME),
(1, FOOTBALL, 1, 2018-03-05, 10, HOME),
(2, FOOTBALL, 2, 2018-01-01, 1, AWAY),
(2, FOOTBALL, 2, 2018-01-08, 2, AWAY),
(2, FOOTBALL, 2, 2018-01-15, 3, HOME),
(2, FOOTBALL, 2, 2018-01-22, 4, AWAY),
(2, FOOTBALL, 2, 2018-01-29, 5, HOME),
(2, FOOTBALL, 2, 2018-02-05, 6, AWAY),
(2, FOOTBALL, 2, 2018-02-12, 7, HOME),
(2, FOOTBALL, 2, 2018-02-19, 8, AWAY),
(2, FOOTBALL, 2, 2018-02-26, 9, HOME),
(2, FOOTBALL, 2, 2018-03-05, 10, AWAY),
(3, FOOTBALL, 3, 2018-01-01, 1, HOME),
(3, FOOTBALL, 3, 2018-01-08, 2, AWAY),
(3, FOOTBALL, 3, 2018-01-15, 3, HOME),
(3, FOOTBALL, 3, 2018-01-22, 4, HOME),
(3, FOOTBALL, 3, 2018-01-29, 5, AWAY),
(3, FOOTBALL, 3, 2018-02-05, 6, AWAY),
(3, FOOTBALL, 3, 2018-02-12, 7, HOME),
(3, FOOTBALL, 3, 2018-02-19, 8, AWAY),
(3, FOOTBALL, 3, 2018-02-26, 9, AWAY),
(3, FOOTBALL, 3, 2018-03-05, 10, HOME),
(4, FOOTBALL, 4, 2018-01-01, 1, HOME),
(4, FOOTBALL, 4, 2018-01-08, 2, HOME),
(4, FOOTBALL, 4, 2018-01-15, 3, HOME),
(4, FOOTBALL, 4, 2018-01-22, 4, AWAY),
(4, FOOTBALL, 4, 2018-01-29, 5, HOME),
(4, FOOTBALL, 4, 2018-02-05, 6, HOME),
(4, FOOTBALL, 4, 2018-02-12, 7, AWAY),
(4, FOOTBALL, 4, 2018-02-19, 8, HOME),
(4, FOOTBALL, 4, 2018-02-26, 9, HOME),
(4, FOOTBALL, 4, 2018-03-05, 10, AWAY),
(5, FOOTBALL, 5, 2018-01-01, 1, AWAY),
(5, FOOTBALL, 5, 2018-01-08, 2, HOME),
(5, FOOTBALL, 5, 2018-01-15, 3, HOME),
(5, FOOTBALL, 5, 2018-01-22, 4, AWAY),
(5, FOOTBALL, 5, 2018-01-29, 5, HOME),
(5, FOOTBALL, 5, 2018-02-05, 6, HOME),
(5, FOOTBALL, 5, 2018-02-12, 7, AWAY),
(5, FOOTBALL, 5, 2018-02-19, 8, HOME),
(5, FOOTBALL, 5, 2018-02-26, 9, HOME),
(5, FOOTBALL, 5, 2018-03-05, 10, AWAY),
(6, FOOTBALL, 6, 2018-01-01, 1, AWAY),
(6, FOOTBALL, 6, 2018-01-08, 2, HOME),
(6, FOOTBALL, 6, 2018-01-15, 3, HOME),
(6, FOOTBALL, 6, 2018-01-22, 4, AWAY),
(6, FOOTBALL, 6, 2018-01-29, 5, AWAY),
(6, FOOTBALL, 6, 2018-02-05, 6, HOME),
(6, FOOTBALL, 6, 2018-02-12, 7, AWAY),
(6, FOOTBALL, 6, 2018-02-19, 8, HOME),
(6, FOOTBALL, 6, 2018-02-26, 9, AWAY),
(6, FOOTBALL, 6, 2018-03-05, 10, HOME),
(7, FOOTBALL, 7, 2018-01-01, 1, AWAY),
(7, FOOTBALL, 7, 2018-01-08, 2, AWAY),
(7, FOOTBALL, 7, 2018-01-15, 3, AWAY),
(7, FOOTBALL, 7, 2018-01-22, 4, HOME),
(7, FOOTBALL, 7, 2018-01-29, 5, HOME),
(7, FOOTBALL, 7, 2018-02-05, 6, HOME),
(7, FOOTBALL, 7, 2018-02-12, 7, AWAY),
(7, FOOTBALL, 7, 2018-02-19, 8, HOME),
(7, FOOTBALL, 7, 2018-02-26, 9, HOME),
(7, FOOTBALL, 7, 2018-03-05, 10, HOME),
(8, FOOTBALL, 8, 2018-01-01, 1, AWAY),
(8, FOOTBALL, 8, 2018-01-08, 2, HOME),
(8, FOOTBALL, 8, 2018-01-15, 3, AWAY),
(8, FOOTBALL, 8, 2018-01-22, 4, HOME),
(8, FOOTBALL, 8, 2018-01-29, 5, AWAY),
(8, FOOTBALL, 8, 2018-02-05, 6, HOME),
(8, FOOTBALL, 8, 2018-02-12, 7, HOME),
(8, FOOTBALL, 8, 2018-02-19, 8, HOME),
(8, FOOTBALL, 8, 2018-02-26, 9, AWAY),
(8, FOOTBALL, 8, 2018-03-05, 10, HOME),
(9, FOOTBALL, 9, 2018-01-01, 1, AWAY),
(9, FOOTBALL, 9, 2018-01-08, 2, HOME),
(9, FOOTBALL, 9, 2018-01-15, 3, HOME),
(9, FOOTBALL, 9, 2018-01-22, 4, AWAY),
(9, FOOTBALL, 9, 2018-01-29, 5, HOME),
(9, FOOTBALL, 9, 2018-02-05, 6, HOME),
(9, FOOTBALL, 9, 2018-02-12, 7, AWAY),
(9, FOOTBALL, 9, 2018-02-19, 8, HOME),
(9, FOOTBALL, 9, 2018-02-26, 9, HOME),
(9, FOOTBALL, 9, 2018-03-05, 10, AWAY),
(10, FOOTBALL, 10, 2018-01-01, 1, AWAY),
(10, FOOTBALL, 10, 2018-01-08, 2, HOME),
(10, FOOTBALL, 10, 2018-01-15, 3, AWAY),
(10, FOOTBALL, 10, 2018-01-22, 4, HOME),
(10, FOOTBALL, 10, 2018-01-29, 5, AWAY),
(10, FOOTBALL, 10, 2018-02-05, 6, HOME),
(10, FOOTBALL, 10, 2018-02-12, 7, AWAY),
(10, FOOTBALL, 10, 2018-02-19, 8, HOME),
(10, FOOTBALL, 10, 2018-02-26, 9, HOME),
(10, FOOTBALL, 10, 2018-03-05, 10, AWAY),
(11, BASKETBALL, 11, 2018-01-01, 1, HOME),
(11, BASKETBALL, 11, 2018-01-08, 2, AWAY),
(11, BASKETBALL, 11, 2018-01-15, 3, HOME),
(11, BASKETBALL, 11, 2018-01-22, 4, HOME),
(11, BASKETBALL, 11, 2018-01-29, 5, HOME),
(11, BASKETBALL, 11, 2018-02-05, 6, AWAY),
(11, BASKETBALL, 11, 2018-02-12, 7, AWAY),
(11, BASKETBALL, 11, 2018-02-19, 8, AWAY),
(11, BASKETBALL, 11, 2018-02-26, 9, HOME),
(11, BASKETBALL, 11, 2018-03-05, 10, HOME),
(12, BASKETBALL, 12, 2018-01-01, 1, AWAY),
(12, BASKETBALL, 12, 2018-01-08, 2, HOME),
(12, BASKETBALL, 12, 2018-01-15, 3, HOME),
(12, BASKETBALL, 12, 2018-01-22, 4, AWAY),
(12, BASKETBALL, 12, 2018-01-29, 5, HOME),
(12, BASKETBALL, 12, 2018-02-05, 6, HOME),
(12, BASKETBALL, 12, 2018-02-12, 7, AWAY),
(12, BASKETBALL, 12, 2018-02-19, 8, AWAY),
(12, BASKETBALL, 12, 2018-02-26, 9, AWAY),
(12, BASKETBALL, 12, 2018-03-05, 10, HOME),
(13, BASKETBALL, 13, 2018-01-01, 1, AWAY),
(13, BASKETBALL, 13, 2018-01-08, 2, HOME),
(13, BASKETBALL, 13, 2018-01-15, 3, AWAY),
(13, BASKETBALL, 13, 2018-01-22, 4, AWAY),
(13, BASKETBALL, 13, 2018-01-29, 5, HOME),
(13, BASKETBALL, 13, 2018-02-05, 6, HOME),
(13, BASKETBALL, 13, 2018-02-12, 7, AWAY),
(13, BASKETBALL, 13, 2018-02-19, 8, HOME),
(13, BASKETBALL, 13, 2018-02-26, 9, HOME),
(13, BASKETBALL, 13, 2018-03-05, 10, AWAY),
(14, BASKETBALL, 14, 2018-01-01, 1, AWAY),
(14, BASKETBALL, 14, 2018-01-08, 2, HOME),
(14, BASKETBALL, 14, 2018-01-15, 3, AWAY),
(14, BASKETBALL, 14, 2018-01-22, 4, HOME),
(14, BASKETBALL, 14, 2018-01-29, 5, AWAY),
(14, BASKETBALL, 14, 2018-02-05, 6, AWAY),
(14, BASKETBALL, 14, 2018-02-12, 7, HOME),
(14, BASKETBALL, 14, 2018-02-19, 8, HOME),
(14, BASKETBALL, 14, 2018-02-26, 9, AWAY),
(14, BASKETBALL, 14, 2018-03-05, 10, AWAY),
(15, BASKETBALL, 15, 2018-01-01, 1, AWAY),
(15, BASKETBALL, 15, 2018-01-08, 2, HOME),
(15, BASKETBALL, 15, 2018-01-15, 3, AWAY),
(15, BASKETBALL, 15, 2018-01-22, 4, AWAY),
(15, BASKETBALL, 15, 2018-01-29, 5, HOME),
(15, BASKETBALL, 15, 2018-02-05, 6, AWAY),
(15, BASKETBALL, 15, 2018-02-12, 7, HOME),
(15, BASKETBALL, 15, 2018-02-19, 8, AWAY),
(15, BASKETBALL, 15, 2018-02-26, 9, AWAY),
(15, BASKETBALL, 15, 2018-03-05, 10, HOME),
(16, BASKETBALL, 16, 2018-01-01, 1, AWAY),
(16, BASKETBALL, 16, 2018-01-08, 2, HOME),
(16, BASKETBALL, 16, 2018-01-15, 3, AWAY),
(16, BASKETBALL, 16, 2018-01-22, 4, AWAY),
(16, BASKETBALL, 16, 2018-01-29, 5, HOME),
(16, BASKETBALL, 16, 2018-02-05, 6, HOME),
(16, BASKETBALL, 16, 2018-02-12, 7, AWAY),
(16, BASKETBALL, 16, 2018-02-19, 8, HOME),
(16, BASKETBALL, 16, 2018-02-26, 9, AWAY),
(16, BASKETBALL, 16, 2018-03-05, 10, AWAY),
(17, BASKETBALL, 17, 2018-01-01, 1, AWAY),
(17, BASKETBALL, 17, 2018-01-08, 2, HOME),
(17, BASKETBALL, 17, 2018-01-15, 3, AWAY),
(17, BASKETBALL, 17, 2018-01-22, 4, AWAY),
(17, BASKETBALL, 17, 2018-01-29, 5, AWAY),
(17, BASKETBALL, 17, 2018-02-05, 6, HOME),
(17, BASKETBALL, 17, 2018-02-12, 7, HOME),
(17, BASKETBALL, 17, 2018-02-19, 8, AWAY),
(17, BASKETBALL, 17, 2018-02-26, 9, AWAY),
(17, BASKETBALL, 17, 2018-03-05, 10, HOME),
(18, BASKETBALL, 18, 2018-01-01, 1, AWAY),
(18, BASKETBALL, 18, 2018-01-08, 2, HOME),
(18, BASKETBALL, 18, 2018-01-15, 3, HOME),
(18, BASKETBALL, 18, 2018-01-22, 4, AWAY),
(18, BASKETBALL, 18, 2018-01-29, 5, AWAY),
(18, BASKETBALL, 18, 2018-02-05, 6, AWAY),
(18, BASKETBALL, 18, 2018-02-12, 7, HOME),
(18, BASKETBALL, 18, 2018-02-19, 8, AWAY),
(18, BASKETBALL, 18, 2018-02-26, 9, AWAY),
(18, BASKETBALL, 18, 2018-03-05, 10, HOME),
(19, BASKETBALL, 19, 2018-01-01, 1, HOME),
(19, BASKETBALL, 19, 2018-01-08, 2, HOME),
(19, BASKETBALL, 19, 2018-01-15, 3, AWAY),
(19, BASKETBALL, 19, 2018-01-22, 4, HOME),
(19, BASKETBALL, 19, 2018-01-29, 5, AWAY),
(19, BASKETBALL, 19, 2018-02-05, 6, HOME),
(19, BASKETBALL, 19, 2018-02-12, 7, AWAY),
(19, BASKETBALL, 19, 2018-02-19, 8, HOME),
(19, BASKETBALL, 19, 2018-02-26, 9, HOME),
(19, BASKETBALL, 19, 2018-03-05, 10, AWAY),
(20, BASKETBALL, 20, 2018-01-01, 1, HOME),
(20, BASKETBALL, 20, 2018-01-08, 2, HOME),
(20, BASKETBALL, 20, 2018-01-15, 3, AWAY),
(20, BASKETBALL, 20, 2018-01-22, 4, AWAY),
(20, BASKETBALL, 20, 2018-01-29, 5, HOME),
(20, BASKETBALL, 20, 2018-02-05, 6, HOME),
(20, BASKETBALL, 20, 2018-02-12, 7, AWAY),
(20, BASKETBALL, 20, 2018-02-19, 8, HOME),
(20, BASKETBALL, 20, 2018-02-26, 9, AWAY),
(20, BASKETBALL, 20, 2018-03-05, 10, AWAY);

INSERT INTO TeamStats (st_hometeamID, st_awayteamID, st_sport, st_matchup, st_score1, st_score2) VALUES
(1, 2, 'FOOTBALL', 2018-01-01, 21, 12),
(3, 5, 'FOOTBALL', 2018-01-01, 17, 21),
(4, 7, 'FOOTBALL', 2018-01-01, 35, 18),
(6, 8, 'FOOTBALL', 2018-01-01, 49, 6),
(9, 10, 'FOOTBALL', 2018-01-01, 16, 14),
(1, 3, 'FOOTBALL', 2018-01-08, 14, 18),
(5, 2, 'FOOTBALL', 2018-01-08, 23, 21),
(4, 6, 'FOOTBALL', 2018-01-08, 42, 35),
(7, 9, 'FOOTBALL', 2018-01-08, 18, 24),
(8, 10, 'FOOTBALL', 2018-01-08, 6, 16),
(1, 4, 'FOOTBALL', 2018-01-15, 21, 12),
(2, 6, 'FOOTBALL', 2018-01-15, 17, 21),
(3, 7, 'FOOTBALL', 2018-01-15, 35, 18),
(5, 10, 'FOOTBALL', 2018-01-15, 49, 6),
(9, 8, 'FOOTBALL', 2018-01-15, 16, 14),
(1, 5, 'FOOTBALL', 2018-01-22, 12, 12),
(2, 3, 'FOOTBALL', 2018-01-22, 19, 22),
(4, 10, 'FOOTBALL', 2018-01-22, 15, 14),
(6, 9, 'FOOTBALL', 2018-01-22, 43, 29),
(7, 8, 'FOOTBALL', 2018-01-22, 16, 18),
(1, 6, 'FOOTBALL', 2018-01-29, 35, 37),
(2, 10, 'FOOTBALL', 2018-01-29, 27, 21),
(3, 9, 'FOOTBALL', 2018-01-29, 32, 14),
(4, 8, 'FOOTBALL', 2018-01-29, 12, 34),
(5, 7, 'FOOTBALL', 2018-01-29, 24, 18),
(1, 7, 'FOOTBALL', 2018-02-05, 21, 12),
(2, 4, 'FOOTBALL', 2018-02-05, 17, 21),
(3, 8, 'FOOTBALL', 2018-02-05, 35, 18),
(5, 9, 'FOOTBALL', 2018-02-05, 49, 6),
(6, 10, 'FOOTBALL', 2018-02-05, 16, 14),
(1, 8, 'FOOTBALL', 2018-02-12, 22, 32),
(2, 9, 'FOOTBALL', 2018-02-12, 14, 22),
(3, 6, 'FOOTBALL', 2018-02-12, 31, 10),
(4, 5, 'FOOTBALL', 2018-02-12, 45, 52),
(7, 10, 'FOOTBALL', 2018-02-12, 11, 16),
(1, 9, 'FOOTBALL', 2018-02-19, 14, 22),
(2, 7, 'FOOTBALL', 2018-02-19, 19, 11),
(3, 10, 'FOOTBALL', 2018-02-19, 32, 28),
(5, 4, 'FOOTBALL', 2018-02-19, 34, 23),
(8, 6, 'FOOTBALL', 2018-02-19, 26, 24),
(1, 10, 'FOOTBALL', 2018-02-26, 24, 32),
(2, 4, 'FOOTBALL', 2018-02-26, 27, 11),
(9, 3, 'FOOTBALL', 2018-02-26, 25, 12),
(6, 5, 'FOOTBALL', 2018-02-26, 19, 21),
(8, 7, 'FOOTBALL', 2018-02-26, 15, 34),
(1, 3, 'FOOTBALL', 2018-03-05, 31, 15),
(4, 2, 'FOOTBALL', 2018-03-05, 11, 23),
(7, 5, 'FOOTBALL', 2018-03-05, 33, 48),
(9, 6, 'FOOTBALL', 2018-03-05, 19, 32),
(10, 8, 'FOOTBALL', 2018-03-05, 16, 14),
(11, 12, 'BASKETBALL', 2018-01-01, 81, 99),
(13, 15, 'BASKETBALL', 2018-01-01, 83, 81),
(14, 17, 'BASKETBALL', 2018-01-01, 92, 102),
(16, 18, 'BASKETBALL', 2018-01-01, 92, 86),
(19, 20, 'BASKETBALL', 2018-01-01, 91, 92),
(11, 13, 'BASKETBALL', 2018-01-08, 94, 93),
(15, 12, 'BASKETBALL', 2018-01-08, 91, 101),
(14, 16, 'BASKETBALL', 2018-01-08, 83, 79),
(17, 19, 'BASKETBALL', 2018-01-08, 90, 99),
(18, 20, 'BASKETBALL', 2018-01-08, 86, 91),
(11, 14, 'BASKETBALL', 2018-01-15, 90, 103),
(12, 16, 'BASKETBALL', 2018-01-15, 117, 91),
(13, 17, 'BASKETBALL', 2018-01-15, 95, 118),
(15, 20, 'BASKETBALL', 2018-01-15, 109, 106),
(19, 18, 'BASKETBALL', 2018-01-15, 110, 114),
(11, 15, 'BASKETBALL', 2018-01-22, 120, 112),
(12, 13, 'BASKETBALL', 2018-01-22, 119, 122),
(14, 20, 'BASKETBALL', 2018-01-22, 115, 114),
(16, 19, 'BASKETBALL', 2018-01-22, 93, 109),
(17, 18, 'BASKETBALL', 2018-01-22, 116, 118),
(11, 16, 'BASKETBALL', 2018-01-29, 95, 97),
(12, 20, 'BASKETBALL', 2018-01-29, 97, 91),
(13, 19, 'BASKETBALL', 2018-01-29, 102, 114),
(14, 18, 'BASKETBALL', 2018-01-29, 112, 94),
(15, 17, 'BASKETBALL', 2018-01-29, 104, 118),
(11, 17, 'BASKETBALL', 2018-02-05, 91, 112),
(12, 14, 'BASKETBALL', 2018-02-05, 97, 101),
(13, 18, 'BASKETBALL', 2018-02-05, 85, 98),
(15, 19, 'BASKETBALL', 2018-02-05, 99, 96),
(16, 20, 'BASKETBALL', 2018-02-05, 116, 114),
(11, 18, 'BASKETBALL', 2018-02-12, 82, 92),
(12, 19, 'BASKETBALL', 2018-02-12, 94, 102),
(13, 16, 'BASKETBALL', 2018-02-12, 101, 110),
(14, 15, 'BASKETBALL', 2018-02-12, 95, 92),
(17, 20, 'BASKETBALL', 2018-02-12, 111, 116),
(11, 19, 'BASKETBALL', 2018-02-19, 114, 92),
(12, 17, 'BASKETBALL', 2018-02-19, 119, 111),
(13, 20, 'BASKETBALL', 2018-02-19, 92, 88),
(15, 14, 'BASKETBALL', 2018-02-19, 114, 113),
(18, 16, 'BASKETBALL', 2018-02-19, 96, 104),
(11, 20, 'BASKETBALL', 2018-02-26, 104, 102),
(12, 14, 'BASKETBALL', 2018-02-26, 97, 111),
(19, 13, 'BASKETBALL', 2018-02-26, 95, 112),
(16, 15, 'BASKETBALL', 2018-02-26, 119, 111),
(18, 17, 'BASKETBALL', 2018-02-26, 115, 104),
(11, 13, 'BASKETBALL', 2018-03-05, 91, 95),
(14, 12, 'BASKETBALL', 2018-03-05, 81, 93),
(17, 15, 'BASKETBALL', 2018-03-05, 103, 98),
(19,16, 'BASKETBALL', 2018-03-05, 99, 112),
(20, 18, 'BASKETBALL', 2018-03-05, 116, 114);

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
(1, 220, 100, 65, 20, 4, 2, 3, 4, 220, 1, 1),
(2, 240, 120, 60, 30, 3, 2, 2, 3, 240, 2, 2),
(3, 300, 80, 79, 24, 10, 1, 1, 5, 300, 2, 3),
(4, 150, 150, 50, 25, 3, 3, 2, 2, 150, 1, 1),
(5, 200, 80, 40, 23, 6, 1, 4, 3, 200, 3, 2),
(6, 210, 120, 30, 31, 7, 2, 2, 1, 210, 2, 2),
(7, 225, 60, 62, 21, 2, 1, 1, 1, 225, 1, 1),
(8, 310, 150, 55, 41, 5, 4, 2, 4, 310, 4, 2),
(9, 185, 80, 57, 31, 9, 1, 1, 2, 185, 1, 2),
(10, 204, 200, 54, 20, 15, 1, 5, 3, 204, 1, 2);

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

INSERT INTO FPlayerStats (pl_playerID, pl_passyards, pl_rushyards, pl_receptions, pl_ointerceptions, pl_touchdowns, pl_receivingyards, pl_fumbles, pl_dinterceptions, pl_sacks, pl_tackles, pl_forcefumbles) VALUES
(1, 300, 10, 0, 6, 2, 0, 1, 0, 0, 0, 0),
(2, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(3, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(4, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(5, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(6, 180, 120, 0, 1, 3, 0, 2, 0, 0, 0, 0),
(7, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(8, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(9, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(10, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(11, 400, 20, 0, 0, 6, 0, 0, 0, 0, 0, 0),
(12, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(13, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(14, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(15, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(16, 350, 50, 0, 0, 3, 0, 3, 0, 0, 0, 0),
(17, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(18, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(19, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(20, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(21, 300, 10, 0, 0, 2, 0, 1, 0, 0, 0, 0),
(22, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(23, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(24, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(25, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(26, 200, 30, 0, 0, 2, 0, 1, 0, 0, 0, 0),
(27, 0, 100, 10, 0, 2, 0, , 0, 0, 0, 0),
(28, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(29, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(30, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(31, 310, 40, 10, 1, 4, 0, 1, 0, 0, 0, 0),
(32, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(33, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(34, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(35, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(36, 335, 55, 0, 1, 2, 0, 1, 0, 0, 0, 0),
(37, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(38, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(39, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(40, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(41, 290, 40, 0, 4, 1, 0, 1, 0, 0, 0, 0),
(42, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(43, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(44, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(45, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(46, 285, 50, 0, 2, 3, 0, 1, 0, 0, 0, 0),
(47, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(48, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(49, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0),
(50, 0, 100, 10, 0, 2, 0, 1, 0, 0, 0, 0);

INSERT INTO BPlayerStats (bp_playerID, bp_rebounds, bp_assists, bp_steals, bp_blocks, bp_turnovers, bp_points) VALUES
(51, 4, 9, 2, 1, 4, 21),
(52, 5, 8, 4, 2, 3, 32),
(53, 7, 4, 3, 4, 2, 12),
(54, 9, 4, 2, 3, 1, 27),
(55, 14, 3, 1, 2, 7, 12),
(56, 2, 11, 6, 6, 4, 23),
(57, 4, 9, 5, 2, 6, 41),
(58, 5, 5, 3, 1, 3, 23),
(59, 9, 3, 2, 2, 2, 12),
(60, 10, 2, 8, 3, 9, 11),
(61, 2, 14, 10, 2, 3, 31),
(62, 5, 5, 1, 3, 2, 12),
(63, 9, 8, 2, 6, 1, 23),
(64, 8, 3, 3, 3, 4, 12),
(65, 20, 4, 4, 2, 2, 18),
(66, 1, 17, 5, 1, 1, 19),
(67, 7, 6, 3, 2, 4, 21),
(68, 9, 8, 2, 5, 7, 23),
(69, 19, 12, 1, 7, 3, 27),
(70, 14, 2, 4, 4, 9, 12),
(71, 7, 19, 7, 1, 3, 21),
(72, 3, 2, 5, 2, 2, 22),
(73, 12, 4, 3, 5, 1, 32),
(74, 11, 4, 7, 6, 5, 11),
(75, 9, 1, 1, 2, 8, 7),
(76, 5, 19, 2, 5, 1, 32),
(77, 2, 12, 9, 3, 2, 21),
(78, 12, 4, 8, 1, 6, 12),
(79, 14, 1, 6, 3, 4, 20),
(80, 10, 2, 4, 2, 8, 12),
(81, 6, 17, 1, 5, 3, 18),
(82, 2, 12, 7, 8, 2, 12),
(83, 12, 4, 8, 2, 4, 20),
(84, 12, 6, 4, 3, 8, 15),
(85, 14, 3, 8, 2, 3, 12),
(86, 2, 10, 3, 1, 4, 15),
(87, 7, 12, 1, 2, 2, 21),
(88, 9, 15, 7, 6, 6, 23),
(89, 10, 7, 3, 3, 9, 18),
(90, 13, 2, 3, 8, 3, 19),
(91, 2, 20, 5, 3, 1, 10),
(92, 5, 2, 2, 1, 8, 15),
(93, 7, 1, 1, 2, 3, 18),
(94, 9, 4, 6, 4, 6, 21),
(95, 18, 1, 4, 6, 3, 18),
(96, 4, 19, 2, 1, 2, 24),
(97, 2, 12, 1, 6, 4, 31),
(98, 12, 4, 8, 3, 5, 32),
(99, 11, 2, 6, 2, 8, 21),
(100, 18, 1, 4, 8, 4, 19);
