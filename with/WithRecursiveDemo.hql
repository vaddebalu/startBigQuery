--This program shows how to with recursive in big BigQuery
with recursive
top10Evene  as ((select 0 As evenNum) union all (select evenNum+2 from top10Evene where top10Evene.evenNum<=20))
select * from top10Evene