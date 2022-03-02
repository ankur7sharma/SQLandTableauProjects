UPDATE covid_deaths
SET date = str_to_date(date, "%d-%m-%Y");