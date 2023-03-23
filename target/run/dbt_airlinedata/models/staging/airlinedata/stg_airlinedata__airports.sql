
  
    
      create  table dbt_airlinedata.stg_airlinedata__airports
    
    
    
    
    
    
    
    
    as
      

select
  *
from dbt_airlinedata.airports_csv;
  