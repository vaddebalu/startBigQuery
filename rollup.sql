--how to use rollup in BigQuery
select dept,Location,sum(salary)
from employee.employee
GROUP BY rollup (dept,Location)