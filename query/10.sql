-- 10. Which planet(s) has been visited by more than three different characters?
-- done
select J.planet_name
from (select T2.Planet_Name,count(*) cc from timetable T2 group by T2.Planet_Name) J
where J.cc = 
(select max(cnt) from (select count(*) as cnt from timetable T group by T.planet_name) mamx_table) ;
