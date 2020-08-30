select IDF, manufacturing_year from flight natural join aeroplane where manufacturing_year <= 2000 and depature_date >= current_date
order by manufacturing_year
