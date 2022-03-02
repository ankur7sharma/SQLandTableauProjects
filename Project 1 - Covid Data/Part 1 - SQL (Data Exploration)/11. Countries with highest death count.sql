-- countries with highest death count
SELECT
	location,
    population,
    MAX(total_deaths) AS highest_dead
FROM covid_deaths
WHERE NOT ( continent = 'NULL' ) AND NOT (continent = 'NOT APPLICABLE')
GROUP BY location, population
ORDER BY highest_dead DESC