
  
    
      create  table dbt_airlinedata.stg_airlinedata__airlines
    
    
    
    
    
    
    
    
    as
      

select
  *
from dbt_airlinedata.airlines_csv;
  