select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

with validation as (
	select code as field
	from raw_airlinedata.airlines_csv
),
validation_errors as (
	select field from validation
	where LENGTH(field) != 3
)

select *
from validation_errors


      
    ) dbt_internal_test