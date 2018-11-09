SELECT p_name, c_name
FROM Player, Team, Coach
WHERE t_teamID = p_teamID AND t_teamID = '1' AND c_teamID = t_teamID