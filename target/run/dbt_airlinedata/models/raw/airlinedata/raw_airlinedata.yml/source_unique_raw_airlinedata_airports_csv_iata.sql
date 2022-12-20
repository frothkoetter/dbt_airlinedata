select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    iata as unique_field,
    count(*) as n_records

from dbt_airlinedata.airports_csv
where iata is not null
group by iata
having count(*) > 1



      
    ) dbt_internal_test