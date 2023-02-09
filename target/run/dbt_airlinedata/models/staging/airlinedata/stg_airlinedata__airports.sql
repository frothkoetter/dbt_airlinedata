
  
    
      create  table dbt_airlinedata.stg_airlinedata__airports
    
    
    
    
    
    
    
    
    as
      

select
  *
from airlinedata.airports_csv;
  