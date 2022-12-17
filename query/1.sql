-- 1. How many planets did Luke Skywalker visit in movie 2? 
-- done
select count(T.Planet_Name) from timetable T
	where T.Character_Name = "Luke Skywalker" AND T.Movie = 2;