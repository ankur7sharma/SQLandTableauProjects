SELECT
	location,
    SUM(new_deaths) AS total_death_count
FROM covid_deaths
WHERE continent = 'NULL' AND
location NOT IN ('World', 'European Union', 'International')
GROUP BY location
ORDER BY total_death_count DESC