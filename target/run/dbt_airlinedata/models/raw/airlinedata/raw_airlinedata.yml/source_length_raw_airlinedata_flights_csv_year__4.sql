select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

with validation as (
	select year as field
	from raw_airlinedata.flights_csv
),
validation_errors as (
	select field from validation
	where LENGTH(field) != 4
)

select *
from validation_errors


      
    ) dbt_internal_test