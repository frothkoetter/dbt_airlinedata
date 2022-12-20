
  
    
      create  table dbt_airlinedata.stg_airlinedata__unique_tickets
    
    
    
    
    
    
    
    
    as
      

select
  *
from dbt_airlinedata.unique_tickets_csv;
  