-- SQL solution for Not Boring Movies
-- Write a solution to report the movies with an odd-numbered ID and a description that is not "boring". Return the result table ordered by rating in descending order
select id, movie, description, rating
from Cinema
where id%2 = 1 and description != 'boring'
order by rating desc;