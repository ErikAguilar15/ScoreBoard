SELECT p_name
  FROM Player,
       Team,
       School
 WHERE p_teamID = t_teamID AND 
       t_schoolID = sc_schoolID AND 
       sc_state = 'CA';
