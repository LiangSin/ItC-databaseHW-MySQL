-- 2. Find all characters that never visited any empire planets. 
-- done
select C.name
from characters C
where C.name not in (select T.character_name
					 from timetable T
					 where T.planet_name in (select P.name from planets P where P.affiliation = "empire"))
;
/*
select T.character_name
from timetable T
where T.planet_name in (select P.name from planets P where P.affiliation = "empire")
;


-- J: join timetable and affiliation
select T.character_name, T.planet_name, P.affiliation
from timetable T join planets P on T.planet_name = P.name
;


select distinct T.character_name from timetable T
	where T.Planet_Name not in (select distinct P.Name from planets P where P.Affiliation = "empire");
*/
 