select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select year
from dbt_airlinedata.flights_csv
where year is null



      
    ) dbt_internal_test