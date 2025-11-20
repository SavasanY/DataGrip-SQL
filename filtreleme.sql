select
    first_name,last_name from hr.employees where salary=6000;

select
    first_name,last_name,salary from hr.employees where salary>6000;

select
    * from hr.employees where phone_number isnull ;

select * from hr.employees where department_id =3 or department_id =5 ;
select * from hr.employees where department_id in (3,5);

select * from hr.employees where hire_date between '1997-01-01' and '1997-01-01';

select * from hr.employees where first_name like 'J%n'