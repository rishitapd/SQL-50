# Write your MySQL query statement below
select visited_on  , amount ,average_amount
from(
    select visited_on,
    sum(amount) over (order by visited_on rows between 6 preceding and current row) as amount,
    round(avg(amount) over(order by visited_on rows between 6 preceding and current row),2) as average_amount,
    row_number() over (order by visited_on)as rnk
   
 FROM (
        SELECT visited_on, SUM(amount) AS amount
        FROM Customer
        GROUP BY visited_on
    ) t
) x
WHERE rnk >= 7;

 