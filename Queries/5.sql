SELECT p_name
FROM Player, FPlayerStats
WHERE pl_playerID = p_playerID AND p_sport = 'FOOTBALL' AND pl_passyards > 100 AND pl_touchdowns > 3