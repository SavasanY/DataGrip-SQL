--AGGREGATE FUNC
--COUNT, SUM, MİN, MAX ,AVG

select count(*) from hr.employees;

select count(phone_number) from hr.employees;

select count(*) from hr.employees where phone_number isnull ;

--tüm çalışan sayısı ve 9000 den fazla kazanan
select count(*) as totalEmp,
       count(case when salary>= 9000 then 2 else null end) as highEarners,
       sum(case when salary>= 9000 then 2 else null end) as highEarners2,
       count(case when salary>= 9000 then 1 else null end) * 1.0 / count(*) as Ratio
from hr.employees;

--departman bazında çalışan sayısı
select  department_id,
        count(employee_id)
from hr.employees
where department_id in (3,4,5)
--group by department_id;
group by 1
order by 1
limit 4 ;

select
    department_id,
    manager_id,
    count(employee_id) as count_emp
from hr.employees
group by 1,2;
