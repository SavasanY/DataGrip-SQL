select department_id,
       sum(salary) as totalSalary,
       count(employee_id) as totalEmpCount,
       count(case when salary is null or salary=0 then 1 else null end) as nullEmp,
       coalesce(sum(case when salary is null or salary=0 then 1 else null end),0 ) as nullEmp2,
       min(salary) as minSalary,
       max(salary) as maxsALARY,
       round(avg(salary),2) as avgSalary
from hr.employees
group by 1
order by 1;

select * from hr.departments