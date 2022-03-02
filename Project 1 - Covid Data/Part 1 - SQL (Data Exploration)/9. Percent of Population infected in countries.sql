-- Looking at countries with highest infection rate compared to population
SELECT
	location,
    population,
    MAX(total_cases) AS highest_infection_count,
    MAX((total_cases/population)*100) AS percent_population_infected
FROM covid_deaths
WHERE NOT ( continent = 'NULL') AND NOT (continent = 'NOT APPLICABLE')
GROUP BY location, population
ORDER BY percent_population_infected DESC