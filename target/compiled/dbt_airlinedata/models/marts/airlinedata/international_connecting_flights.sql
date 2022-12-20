



with connecting_flights as (

SELECT * FROM
  dbt_airlinedata.stg_airlinedata__unique_tickets a,
  dbt_airlinedata.stg_airlinedata__flights  o,
  dbt_airlinedata.stg_airlinedata__flights  d,
  dbt_airlinedata.stg_airlinedata__airports   oa,
  dbt_airlinedata.stg_airlinedata__airports   da
WHERE
   a.leg1flightnum = o.flightnum
   AND a.leg1uniquecarrier = o.uniquecarrier
   AND a.leg1origin = o.origin
   AND a.leg1dest = o.dest
   AND a.leg1month = o.month
   AND a.leg1dayofmonth = o.dayofmonth
   AND a.leg1dayofweek = o.`dayofweek`
   AND a.leg2flightnum = d.flightnum
   AND a.leg2uniquecarrier = d.uniquecarrier
   AND a.leg2origin = d.origin
   AND a.leg2dest = d.dest
   AND a.leg2month = d.month
   AND a.leg2dayofmonth = d.dayofmonth
   AND a.leg2dayofweek = d.`dayofweek`
   AND d.origin = oa.iata
   AND d.dest = da.iata
   AND oa.country <> da.country )
select
  *
from connecting_flights