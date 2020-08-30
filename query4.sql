select idf,country_of_origin, city_of_origin, destination_country, destination_city
       from FLIGHT 
            natural join 
                    (select ida, country as destination_country, city as destination_city from airport) 
            natural join 
                    (select ida as sourceida, country as country_of_origin, city as city_of_origin from airport)
       where country_of_origin != destination_country and CURRENT_DATE <= DEPATURE_DATE
