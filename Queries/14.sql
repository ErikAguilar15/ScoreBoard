--Remove all quarterbacks from the team if they throw 3 or more interceptions a game
DELETE FROM FPlayerStats
WHERE pl_ointerceptions > 3