-- SQL solution for Classes More Than 5 Students
select class 
from Courses
group by class having count(student) >=5;