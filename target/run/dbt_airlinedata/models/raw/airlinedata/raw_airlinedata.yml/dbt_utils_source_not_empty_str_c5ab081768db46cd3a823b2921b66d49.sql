select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

    with
    
    all_values as (

        select 


            trim(year) as year
            
        from raw_airlinedata.flights_csv

    ),

    errors as (

        select * from all_values
        where year = ''

    )

    select * from errors


      
    ) dbt_internal_test