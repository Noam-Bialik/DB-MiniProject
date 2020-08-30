select 'Arrive' as event, idf, depature_date, estimated_arrival_date, name as airport_name, country, city 
       from airport natural join flight 
       where estimated_arrival_date <= CURRENT_DATE
union
       select 'Depart' as event, idf, depature_date, estimated_arrival_date, name as airport_name, country, city 
              from airport natural join (select sourceida as ida, idf, depature_date, estimated_arrival_date from flight) 
              where depature_date <= CURRENT_DATE
order by  country, event
