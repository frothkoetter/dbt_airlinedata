
  
    
      create  table dbt_airlinedata.stg_airlinedata__unique_tickets
    
    
    
    
    
    
    
    
    as
      

select
  *
from airlinedata.unique_tickets_csv
  