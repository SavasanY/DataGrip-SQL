select
    first_name,last_name,
    concat(first_name,' ',last_name) name_concat,
    first_name||' '||last_name as first_last_name
from hr.employees
where phone_number is null;

--left
select phone_number,
       "left"(phone_number, 3)
    from hr.employees;

--right
select "right"(email,16) email from hr.employees;

--length
select first_name,length(first_name) from hr.employees;

--lower upper
select first_name,lower(first_name),upper(first_name) from hr.employees;

select *,concat(first_name,'_',last_name,'_',email,'_',phone_number,'_',hire_date) as uniqueID from hr.employees;

--split
select email,split_part(email,'@',2), split_part(email,'@',1) from hr.employees;

--replace
select email, replace(email,'veriegitimi.com', 'gmail.com') from hr.employees;