SELECT t_name, t_teamID, st_matchup 
FROM Schedule, TeamStats, Team
WHERE st_score1 > st_score2 AND s_teamID = st_awayteamID AND s_sport = 'FOOTBALL' AND t_teamID = s_teamID AND s_matchup = st_matchup