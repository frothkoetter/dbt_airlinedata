select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

    with
    
    all_values as (

        select 


            trim(description) as description
            
        from dbt_airlinedata.airlines_csv

    ),

    errors as (

        select * from all_values
        where description = ''

    )

    select * from errors


      
    ) dbt_internal_test