-- SQL solution for Primary Department For Each Employee
select employee_id, department_id
from Employee
where primary_flag = 'Y' OR employee_id in (
    select employee_id from employee group by employee_id having count(employee_id)=1
) ;