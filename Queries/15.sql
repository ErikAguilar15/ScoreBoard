--Update the scores for the game played by team 1 and team 2 on 1/1/18
UPDATE TeamStats
   SET st_score1 = 17,
       st_score2 = 21
 WHERE st_matchup = "2018-01-01" AND 
       st_homeID = 1 AND 
       st_awayID = 2;
