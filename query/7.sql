-- 7. How many times for each character to visit his/her homeworld? show character names and times appeared in TimeTable.
-- how to print 0
/*
-- N: those didn't visit homeworld
select C2.name
from characters C2
where C2.name not in (select C.name as cnt
	  from (timetable T join characters C on T.character_name = C.name and T.planet_name = C.homeworld)
	  group by C.name)
order by C2.name
;
*/
-- J: joined and select those go to homeworld
select C.name,count(*) as cnt
from (timetable T join characters C on T.character_name = C.name and T.planet_name = C.homeworld)
group by C.name;
/*
select *
from (timetable T join characters C on T.character_name = C.name and T.planet_name = C.homeworld)
;
*/