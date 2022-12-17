-- 4. Find distinct names of the planets visited by rebels-affiliated human.
-- done
select distinct T.Planet_Name from timetable T,characters C
where T.Character_Name = C.Name and C.Affiliation = "rebels" and C.Race = "Human";