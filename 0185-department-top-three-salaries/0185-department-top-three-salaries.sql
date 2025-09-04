# Write your MySQL query statement below
select Department , Employee , Salary
from (select  d.name as Department , e.name as Employee ,e.salary,
dense_rank() over(partition by d.name order by salary desc) salary_rank
from employee as e
join department as d 
on e.departmentId =d.id) t
where t.salary_rank<=3;
