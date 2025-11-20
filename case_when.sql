select * from hr.employees;
--çalışan maaşlara göre gruplama <8000 >8000
--case when
select first_name,
       last_name,
       salary,
       case
           when salary < 8000 then 'low salary'
           when salary >= 8000 and salary <10000 then 'high salary'
           --when salary >= 10000 then 'admin'
           else 'admin'
       end as salary_segment
from hr.employees