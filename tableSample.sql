--how to use table sample operator in BigQuery
select * from `employee.employee` tablesample system ( 20 percent)