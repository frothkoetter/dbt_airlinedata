
  
    
      create  table dbt_airlinedata.stg_airlinedata__planes
    
    
    
    
    
    
    
    
    as
      

select
  *
from airlinedata.planes_csv;
  