
  
    
      create  table dbt_airlinedata_mart_airlinedata.airport_departing_flights
    
    
    
    
    
    
    
    
    as
      with airports as (select
 a.iata as iata_code
from
 dbt_airlinedata.stg_airlinedata__airports
),
   flights as
   (select
        uniquecarrier || cast(flightnum as string) as flightno
        origin as departing_airport
    FROM
        dbt_airlinedata.stg_airlinedata__flights
    ),
    collected as
    ( select
      airports.iata_code,
      flights.flightno,
      flights.departing_airport
    from
       airports,
       flights
     where
       airports.iata_code = flights.departing_airport
       group by 1,2,3
    ),
    select
    collected.iata_code,
    collected.flightno
    from
    collected
  