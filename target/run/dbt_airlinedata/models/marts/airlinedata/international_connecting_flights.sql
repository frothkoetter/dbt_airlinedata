
      
    insert into table dbt_airlinedata_mart_airlinedata.international_connecting_flights
    select `ticketnumber`, `leg1flightnum`, `leg1uniquecarrier`, `leg1origin`, `leg1dest`, `leg1month`, `leg1dayofmonth`, `leg1dayofweek`, `leg1deptime`, `leg1arrtime`, `leg2flightnum`, `leg2uniquecarrier`, `leg2origin`, `leg2dest`, `leg2month`, `leg2dayofmonth`, `leg2dayofweek`, `leg2deptime`, `leg2arrtime`, `month`, `dayofmonth`, `dayofweek`, `deptime`, `crsdeptime`, `arrtime`, `crsarrtime`, `uniquecarrier`, `flightnum`, `tailnum`, `actualelapsedtime`, `crselapsedtime`, `airtime`, `arrdelay`, `depdelay`, `origin`, `dest`, `distance`, `taxiin`, `taxiout`, `cancelled`, `cancellationcode`, `diverted`, `carrierdelay`, `weatherdelay`, `nasdelay`, `securitydelay`, `lateaircraftdelay`, `year`, `_col48`, `_col49`, `_col50`, `_col51`, `_col52`, `_col53`, `_col54`, `_col55`, `_col56`, `_col57`, `_col58`, `_col59`, `_col60`, `_col61`, `_col62`, `_col63`, `_col64`, `_col65`, `_col66`, `_col67`, `_col68`, `_col69`, `_col70`, `_col71`, `_col72`, `_col73`, `_col74`, `_col75`, `_col76`, `iata`, `airport`, `city`, `state`, `country`, `lat`, `lon`, `_col84`, `_col85`, `_col86`, `_col87`, `_col88`, `_col89`, `_col90` from dbt_airlinedata_mart_airlinedata.international_connecting_flights__dbt_tmp


  