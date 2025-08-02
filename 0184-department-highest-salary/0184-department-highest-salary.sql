# Write your MySQL query statement below
select d.name as Department , e.name as Employee , e.Salary
from employee as e
join department as d
on e.departmentId=d.id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employee AS e2
    WHERE e2.departmentId = e.departmentId
)

