-- How to use with clause in big query?
-- Below query uses with clause
with top3 as ( select * from `startbigquery.employee.emp` order by salary desc limit 3)
select sum(salary) from top3