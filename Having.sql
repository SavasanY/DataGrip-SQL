select
    department_id,
    count(employee_id) as countEmp
from hr.employees
group by 1
having count(employee_id) >= 5 ;

--maaşı 5k dan buyuk olanları departmana göre sırala

select
    department_id,
    count(employee_id) as empCount
from hr.employees
where salary >= 5000
group by department_id;

select
    department_id,
    count(employee_id) as countEmp
from hr.employees
where salary >= 5000
group by 1
having count(employee_id) >= 5