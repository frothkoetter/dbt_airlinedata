select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

with validation as (
	select iata as field
	from dbt_airlinedata.airports_csv
),
validation_errors as (
	select field from validation
	where LENGTH(field) != 3
)

select *
from validation_errors


      
    ) dbt_internal_test