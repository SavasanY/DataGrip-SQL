select
    first_name,
    last_name,
    salary,
    salary_new,
    ((salary_new - salary) / nullif(salary, 0)) as raise
from hr.employees;

select
    first_name || ' ' || last_name as first_last_name,
    COALESCE(phone_number,phone_number_2),
    COALESCE(phone_number,phone_number_2,'TELEFON YOK')
from hr.employees


