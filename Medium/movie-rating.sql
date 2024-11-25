-- SQL solution for Movie Rating
-- Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.
-- Find the movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.
(select name AS results
from MovieRating m
join Users u on m.user_id = u.user_id
group by name
order by count(*) desc, name
limit 1)

union all

(select title 
from MovieRating m
join Movies m1 on m1.movie_id = m.movie_id
where extract(year_month from created_at) = '2020-02'
group by title 
order by avg(rating) desc, title
limit 1
);