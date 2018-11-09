SELECT p_name
FROM Player, FPlayerStats
WHERE pl_playerID = p_playerID AND p_sport = 'FOOTBALL' AND pl_rushyards > 100 AND p_position = 'RB' AND p_height > 70