

with flights as(
  select
  month,
  dayofmonth,
  dayofweek,
  deptime,
  crsdeptime,
  arrtime,
  crsarrtime,
  uniquecarrier,
  flightnum,
  tailnum,
  actualelapsedtime,
  crselapsedtime,
  airtime,
  arrdelay,
  depdelay,
  origin,
  dest,
  distance,
  taxiin,
  taxiout,
  cancelled,
  cancellationcode,
  diverted,
  carrierdelay,
  weatherdelay,
  nasdelay,
  securitydelay,
  lateaircraftdelay,
  year
  from dbt_airlinedata.stg_airlinedata__flights
),
airlines as(
  select
    code,
    description
  from dbt_airlinedata.stg_airlinedata__airlines
), delayed_flights as(
  SELECT
    SUM(flights.cancelled) AS num_flights_cancelled,
    SUM(1) AS total_num_flights,
    MIN(airlines.description) AS airline_name,
    airlines.code AS airline_code
  FROM
    flights
    JOIN airlines ON (flights.uniquecarrier = airlines.code)
  GROUP BY airlines.code
)
select
  delayed_flights.num_flights_cancelled,
  delayed_flights.total_num_flights,
  delayed_flights.airline_name,
  delayed_flights.airline_code
from delayed_flights