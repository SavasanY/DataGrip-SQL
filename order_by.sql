select * from hr.employees;

select first_name,last_name
from hr.employees
where phone_number is not null
order by salary desc
limit 10;