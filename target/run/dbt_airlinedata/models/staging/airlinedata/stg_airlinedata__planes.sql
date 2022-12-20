
  
    
      create  table dbt_airlinedata.stg_airlinedata__planes
    
    
    
    
    
    
    
    
    as
      

select
  *
from dbt_airlinedata.planes_csv;
  