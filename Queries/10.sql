SELECT MAX(st_score2)
FROM Schedule, TeamStats
WHERE s_matchup = st_matchup AND st_matchup = '2018-01-01' AND st_sport = 'FOOTBALL'