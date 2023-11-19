---How to use pivot and Unpivot in BigQuery
create table employee.produce AS (
  SELECT 'Kale' as product, 51 as sales, 'Q1' as quarter, 2020 as year UNION ALL
  SELECT 'Kale', 23, 'Q2', 2020 UNION ALL
  SELECT 'Kale', 45, 'Q3', 2020 UNION ALL
  SELECT 'Kale', 3, 'Q4', 2020 UNION ALL
  SELECT 'Kale', 70, 'Q1', 2021 UNION ALL
  SELECT 'Kale', 85, 'Q2', 2021 UNION ALL
  SELECT 'Apple', 77, 'Q1', 2020 UNION ALL
  SELECT 'Apple', 0, 'Q2', 2020 UNION ALL
  SELECT 'Apple', 1, 'Q1', 2021)
with produce_quarter as (
select * from `employee.produce`
pivot (sum(sales) for quarter in ('Q1','Q2','Q3','Q4')))

select * from produce_quarter
unpivot( sales for quarter in (Q1,Q2,Q3,Q4))