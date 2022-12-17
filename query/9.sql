-- 9. For each race, find the character that travels the most (number of time slots) in each movie. (movie, race, character_name
-- done
select M.movie, M.race, J2.name
from (select C2.name, C2.race, S2.movie, S2.ssum2
	  from characters C2 join 
		   (select T2.character_name, T2.movie, sum(T2.time_of_departure - T2.time_of_arrival) as ssum2 
		    from timetable T2
		    group by T2.character_name, T2.movie) S2 on C2.name = S2.character_name) J2, 
	 (select J.race, J.movie, max(J.ssum) as msum
	  from (select C.name, C.race, S.movie, S.ssum
		    from characters C join 
			     (select T.character_name, T.movie, sum(T.time_of_departure - T.time_of_arrival) as ssum 
				  from timetable T
				  group by T.character_name, T.movie) S on C.name = S.character_name) J
	  group by J.race, J.movie) M
where J2.race = M.race and J2.movie = M.movie and J2.ssum2 = M.msum
order by M.movie asc, M.race asc
;
/*
-- M: max sum sorted by race and movie
select J.race, J.movie, max(J.ssum) as msum
from (select C.name, C.race, S.movie, S.ssum
	  from characters C join 
		   (select T.character_name, T.movie, sum(T.time_of_departure - T.time_of_arrival) as ssum 
		    from timetable T
		    group by T.character_name, T.movie) S on C.name = S.character_name) J
group by J.race, J.movie;

-- J: join S and C
select C.name, C.race, S.movie, S.ssum
from characters C join 
	 (select T.character_name, T.movie, sum(T.time_of_departure - T.time_of_arrival) as ssum 
      from timetable T
      group by T.character_name, T.movie) S on C.name = S.character_name
;

-- S: sort by name and movie
select T.character_name, T.movie, sum(T.time_of_departure - T.time_of_arrival) as ssum 
from timetable T
group by T.character_name, T.movie;
*/