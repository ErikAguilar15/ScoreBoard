SELECT t_name
FROM Schedule, TeamStats, Team
WHERE st_score1 > st_score2 AND s_teamID = (st_hometeamID OR st_awayteamID) AND s_sport = 'FOOTBALL' AND t_teamID = s_teamID