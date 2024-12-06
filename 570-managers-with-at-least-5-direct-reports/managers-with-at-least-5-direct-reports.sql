# Write your MySQL query statement below
select e1.name
from employee e1
where e1.id IN (
    select e2.managerid
    from employee e2
    group by e2.managerid
    having count(e2.id) >= 5
)