-- 6. For each movie, which character(s) visited the highest number of planets?
-- done
select J2.movie, J2.character_name
from (select T2.character_name,T2.movie,count(distinct T2.planet_name) as cc 
	  from timetable T2 group by T2.character_name,T2.movie) as J2,
	 (select max(cnt) as mcnt, J.movie from (
	  select T.character_name,T.movie,count(distinct T.planet_name) as cnt from timetable T group by T.character_name,T.movie)
      as J group by J.movie) as MT
where J2.movie = MT.movie and J2.cc = MT.mcnt
order by movie asc;
