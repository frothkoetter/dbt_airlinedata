
    
    

select
    code as unique_field,
    count(*) as n_records

from dbt_airlinedata.airlines_csv
where code is not null
group by code
having count(*) > 1


