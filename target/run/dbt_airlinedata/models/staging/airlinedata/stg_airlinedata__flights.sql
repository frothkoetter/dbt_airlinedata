
  
    
      create  table dbt_airlinedata.stg_airlinedata__flights
    
    
    
    
    
    
    
    
    as
      

select
  *
from dbt_airlinedata.flights_csv;
  