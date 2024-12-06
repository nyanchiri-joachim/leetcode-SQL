# Write your MySQL query statement 
WITH CTE AS 
(select 
    d.name as department, 
    e.name as employee, 
    e.salary, 
    Dense_Rank() over(Partition by d.id order by e.salary DESC) as rnk
from
    employee e
left join department d on e.departmentid = d.id )

select 
    department, 
    employee, 
    salary
from 
    CTE
where 
    rnk < 4 


	
