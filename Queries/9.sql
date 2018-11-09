SELECT s_location
FROM Schedule, TeamStats
WHERE s_matchup = st_matchup AND s_matchup = '2018-01-01'