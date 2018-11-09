SELECT p_name, p_playerID
FROM Player, FPlayerStats
WHERE pl_playerID = p_playerID AND p_sport = 'FOOTBALL' AND pl_rushyards > 60 AND p_position = 'HB' AND p_height > 70