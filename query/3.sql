-- 3. Show the characters names and the total time they spent in each planet among the movies.
-- done
select T.Character_Name, SUM(T.Time_of_Departure-T.Time_of_Arrival) from timetable T
	GROUP BY T.Character_Name;