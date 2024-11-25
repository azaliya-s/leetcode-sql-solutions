-- SQL solution for Game Play Analysis Iv
-- Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. In other words, you need to count the number of players that logged in for at least two consecutive days starting from their first login date, then divide that number by the total number of players.
with temp as (
    select player_id, min(event_date) as first_login_date
    from Activity
    group by player_id
)
-- DATEDIFF (START DATE, END DATE)= NUMBER OF DAYS BETWEEEN
select round(sum(DATEDIFF(a.event_date, t.first_login_date) = 1 )/ count(distinct a.player_id), 2) as fraction 
from Activity a
join temp t on a.player_id = t.player_id;