SELECT p_name
FROM Player, BPlayerStats
WHERE p_playerID = bp_playerID AND p_sport = 'BASKETBALL' AND p_position = 'PG' AND p_weight > 150 AND bp_assists > 7