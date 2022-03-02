-- here we want to use the max value from rolling_people _vaccinated and divide it by population to know how many percent of population
-- is vaccinated
-- So let's use CTE here.
WITH population_vs_vac(
	continent,
    location,
    date,
    population,
    new_vaccinations,
    rolling_people_vaccinated
) AS(
	SELECT
		co.continent,
		co.location,
		co.date,
		co.population,
		cv.new_vaccinations,
		SUM(new_vaccinations) 
		OVER 
		(
			PARTITION BY location
			ORDER BY location, date
		) AS rolling_people_vaccinated
	--    MAX((rolling_people_vaccinated/co.population)*100) AS percent_population_vaccinated 
	-- we can't just add above line as rolling_people_vaccinated is undefined. So we create a CTE or temp table
	FROM covid_deaths co
	JOIN covid_vaccinations cv
		ON co.date = cv.date AND
		co.location = cv.location
	WHERE NOT (co.continent = 'NULL') AND NOT (co.continent = 'NOT APPLICABLE')
	GROUP BY co.location, co.date
)
SELECT *, (rolling_people_vaccinated/population)*100 AS percent_people_vaccinated
FROM population_vs_vac