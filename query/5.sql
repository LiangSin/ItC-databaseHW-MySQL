-- 5. Which planet(s) have not been visited by any characters in all movies?
-- done
select P.Name from Planets P 
where P.Name not in (select distinct T.Planet_Name from timetable T);