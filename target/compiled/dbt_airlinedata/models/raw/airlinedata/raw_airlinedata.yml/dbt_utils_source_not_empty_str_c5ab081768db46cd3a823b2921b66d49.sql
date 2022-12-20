

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

