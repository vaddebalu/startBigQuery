--how to use grouping sets in BigQuery

create table `employee.employee` as (
select 'Bala' as empname,10 as empno,1000000 as salary,10  as dept,'Hyderabad' as Location union all
select 'Balu',11,1200000,10,'Pune' union all
select 'Sai',12,1200000,11,'Hyderabad' union all
select 'Nirupam',13,1200000,11,'Pune' union all
select 'Swamy',13,1200000,12,'Hyderabad' union all
select 'Pandu',14,1200000,13,'Pune')

select dept,Location,sum(salary)
from employee.employee
GROUP BY grouping sets (dept,Location)