
select Max(flight.start_time - flight.finish_time)
from flight ;

select airport.flight_id
from airport where exists(select 1
                         from flight where flight.id = airport.flight_id and flight.day_depar = "Monday");


select passenger.name_passenger, Max(flight.start_time - flight.finish_time)
from passenger
         join flight on passenger.id = flight.id
group by passenger.name_passenger
order by flight;

select passenger.name_passenger, Min(flight.start_time - flight.finish_time)
from passenger
         join flight on passenger.id = flight.id
group by passenger.name_passenger
order by flight;

select flight.depar_location, flight.arriv_location, crew.name_pilot
from flight
         join crew on crew.id = flight.crew_id
order by crew.id;
