-- total cases vs total deaths
-- Shows likelihood of dying if one contracts covid in India 
SELECT
	location,
    date,
    total_cases,
    total_deaths,
    (total_deaths/total_cases)*100 AS death_percentage
FROM covid_deaths
WHERE location LIKE 'india'
ORDER BY location, date