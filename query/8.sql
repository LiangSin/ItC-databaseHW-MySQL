-- 8. For Luke Skywalker, for each movie that Luke appears in, what is the planet that has the different affiliation with him and that he travels to for the longest length of time? (movie, planet)
-- done

select M.movie, O22.planet_name
from (select O12.Planet_Name, O12.Movie, O12.ttime2
	  from (select T2.Planet_Name, T2.Movie, sum(T2.Time_of_Departure-T2.Time_of_Arrival) as ttime2
		    from timetable T2
		    where T2.Character_Name = "Luke Skywalker"
		    group by T2.Planet_Name, T2.Movie) O12,
		   planets P2
	  where O12.planet_name = P2.name and P2.affiliation != "rebels") O22,
	 (select O2.movie, max(O2.ttime) as mtime
	  from (select O.Planet_Name, O.Movie, O.ttime
		    from (select T.Planet_Name, T.Movie, sum(T.Time_of_Departure-T.Time_of_Arrival) as ttime
				  from timetable T
				  where T.Character_Name = "Luke Skywalker"
				  group by T.Planet_Name, T.Movie) O,
			     planets P
		    where O.planet_name = P.name and P.affiliation != "rebels") O2
	  group by O2.movie) M
where O22.movie = M.movie and O22.ttime2 = M.mtime
order by M.movie;
/*
-- M: max ttime
select O2.movie, max(O2.ttime) as mtime
from (select O.Planet_Name, O.Movie, O.ttime
	  from (select T.Planet_Name, T.Movie, sum(T.Time_of_Departure-T.Time_of_Arrival) as ttime
		    from timetable T
		    where T.Character_Name = "Luke Skywalker"
		    group by T.Planet_Name, T.Movie) O,
		   planets P
	  where O.planet_name = P.name and P.affiliation != "rebels") O2
group by O2.movie
;

-- O2: select planet not rebels (bug: !="rebels")
select O.Planet_Name, O.Movie, O.ttime
from (select T.Planet_Name, T.Movie, sum(T.Time_of_Departure-T.Time_of_Arrival) as ttime
	  from timetable T
	  where T.Character_Name = "Luke Skywalker"
	  group by T.Planet_Name, T.Movie) O,
	 planets P
where O.planet_name = P.name and P.affiliation != "rebels"
order by O.movie;

-- O: organized table
select T.Planet_Name, T.Movie, sum(T.Time_of_Departure-T.Time_of_Arrival) as ttime
from timetable T
where T.Character_Name = "Luke Skywalker"
group by T.Planet_Name, T.Movie
order by T.Planet_Name;
*/