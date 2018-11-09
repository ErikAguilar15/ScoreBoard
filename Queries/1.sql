SELECT p_name
FROM Player, BPlayerStats
WHERE p_playerID = bp_playerID AND bp_rebounds > 4 AND p_height > 72