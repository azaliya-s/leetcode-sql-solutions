-- SQL solution for Number Of Unique Subjects Taught By Each Teacher
select teacher_id, count(distinct subject_id) as cnt
from Teacher 
group by teacher_id;