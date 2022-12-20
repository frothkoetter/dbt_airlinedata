
    
    

select
    iata as unique_field,
    count(*) as n_records

from dbt_airlinedata.airports_csv
where iata is not null
group by iata
having count(*) > 1


