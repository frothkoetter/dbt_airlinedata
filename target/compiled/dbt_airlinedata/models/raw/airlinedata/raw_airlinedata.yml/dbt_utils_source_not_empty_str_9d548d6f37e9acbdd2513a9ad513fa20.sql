

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

