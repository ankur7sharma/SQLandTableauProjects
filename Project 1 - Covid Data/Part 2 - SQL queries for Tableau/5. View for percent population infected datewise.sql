DROP VIEW IF EXISTS v_date_per_pop;
CREATE VIEW v_date_per_pop AS
SELECT
	location,
    population,
    date,
    MAX(total_cases) AS highest_infection_count,
    MAX((total_cases/population)*100) AS percent_population_infected
FROM covid_deaths
WHERE NOT ( continent = 'NULL') AND NOT (continent = 'NOT APPLICABLE')
GROUP BY location, population, date
ORDER BY location, date, percent_population_infected DESC