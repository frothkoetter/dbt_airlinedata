
  
    
      create  table dbt_airlinedata.stg_airlinedata__flights
    
    
    
    
    
    
    
    
    as
      

select
  *
from airlinedata.flights_csv;
  