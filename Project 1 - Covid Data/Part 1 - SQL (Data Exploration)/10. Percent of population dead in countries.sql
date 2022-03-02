-- countries with highest death count per population percent
SELECT
	location,
    population,
    MAX(total_deaths) AS highest_dead,
    MAX((total_deaths/population)*100) AS percent_population_dead
FROM covid_deaths
WHERE NOT ( continent = 'NULL') AND NOT (continent = 'NOT APPLICABLE')
GROUP BY location, population
ORDER BY percent_population_dead DESC