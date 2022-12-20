select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select code
from dbt_airlinedata.airlines_csv
where code is null



      
    ) dbt_internal_test