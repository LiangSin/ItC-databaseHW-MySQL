# Introduction to Computer Homework: Write MySQL Queries
###### Course: Introduction to Computer<br/>Time: Dec, 2022

## Discription
### Database
Use the *starwar* database containing the following three files:
1. `TimeTable.csv` records for each character and movie, what planet and when did the character go to.
2. `Characters.csv` contains for each character, what is his/her homeworld and affiliation.
3. `Planets.csv` records the information about each planet.

[Database](https://github.com/LiangSin/ItC-databaseHW-MySQL/tree/main/data)

### Requirement
I was asked to write SQL queries that answer the following questions: 
1. How many planets did Luke Skywalker visit in movie 2?
2. Find all characters that never visited any empire planets.
3. Show the characters names and the total time they spent in each planet among the movies.
4. Find distinct names of the planets visited by rebels-affiliated human.
5. Which planet(s) have not been visited by any characters in all movies?
6. For each movie, which character(s) visited the highest number of planets?
7. How many times for each character to visit his/her homeworld? show character names and times appeared in TimeTable.
8. For Luke Skywalker, for each movie that Luke appears in, what is the planet that has the different affiliation with him and that he travels to for the longest length of time? (movie, planet)
9. For each race, find the character that travels the most (number of time slots) in each movie. (movie, race, character_name
10. Which planet(s) has been visited by more than three different characters?

## Reflection
[My code](https://github.com/LiangSin/ItC-databaseHW-MySQL/tree/main/query)

Through the project, I get familiar with the SQL syntax and learn several function, like `join` and `group by`. I found the language friendly to novice. There's no cmoplex syntax, just queries and functions. In my perspective, the nested quary is the most complicated but important syntax. I found a trick to realize nested queries is to do it from the most inner part. It help me stay focus on the quary I'm doing and figure out what steps I've done.

I'm very appreciated that the project gave me the chance to learn a new also a must-know language. Now I can understand why SQL is so popular in the industry and academia: it makes managing dig data simple. Unlike Excel, which I used to use to manage data, MySQL has a better ability to transfer from device to device. Besides, MySQL demonstrate data with certain qualities and relationship more flexible. With all the advantages, SQL is also easy to learn. I think it's an important tool that will certainly help me in the future.

## Appendix
### MySQL introduction
- DBMS(database manage system)：software that stores & manages data
- SQL(structure query language)：use to manage DBMS
- MySQL：a relational DBMS based on SQL
    - RDBMS：store data in row-based tables

### Set the environment
1. Download MySQL community server on [mysql.com](https://dev.mysql.com/downloads/mysql/) and run the installer
    - May create an account, must always remember the password12345678
2. Add `C:\Program Files\MySQL\MySQL Server 5.7\bin` to environment variables(system path)
3. Use workbench(MySQL IDE) or terminal to run the program

