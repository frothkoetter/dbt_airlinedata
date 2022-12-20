
  
    
      create  table dbt_airlinedata_mart_airlinedata.delayed_flights_7day_avg
    
    
    
    
    
    
    
    
    as
      



with avg_day as (
  select concat(year, lpad(month,2,'0'), lpad(dayofmonth,2,'0'))       as tag,
         sum(arrdelay)                 as val
  from
   dbt_airlinedata.stg_airlinedata__flights
  where
   year = 1995
  group by
   concat(year, lpad(month,2,'0'),
                   lpad(dayofmonth,2,'0'))
)
select *,
round( avg(val) over (order by tag rows between 6 preceding and current row),0) as 7day_avg
from avg_day
  