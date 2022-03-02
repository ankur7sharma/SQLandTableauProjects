-- continents with highest death count
SELECT
	location,
    MAX(total_deaths) AS total_death_count
FROM covid_deaths
WHERE continent = 'NULL'
GROUP BY location
ORDER BY total_death_count DESC