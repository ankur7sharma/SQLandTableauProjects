-- Total cases vs Total population
-- Shows what percentage of population got Covid
SELECT
	location,
    date,
    total_cases,
    population,
    (total_cases/population)*100 AS covid_percentage
FROM covid_deaths
WHERE location LIKE 'india'
ORDER BY location, date