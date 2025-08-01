# Write your MySQL query statement below
select m.name as Employee
from employee as e
join employee as m
on e.id=m.managerId
where e.salary<m.salary