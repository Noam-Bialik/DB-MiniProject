select airport_name, person_name as security_person_name, airport_city, sp_city, security_company from 
               (select name as airport_name, ida, country as airport_country, city as airport_city from airport)
                       natural join securing
                       natural join (select name as person_name, city as sp_city, ids, area as sp_area, security_company from security_person)
order by airport_name, security_company
                
