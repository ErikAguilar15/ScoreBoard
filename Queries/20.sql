--Count number of home wins for team 1
SELECT COUNT(*)
FROM TeamStats
WHERE st_hometeamID = 1 AND st_score1 > st_score2