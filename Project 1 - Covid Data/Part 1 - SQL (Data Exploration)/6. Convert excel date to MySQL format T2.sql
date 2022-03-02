UPDATE covid_vaccinations
SET DATE = str_to_date(date, "%d-%m-%Y");
