-- Creating view to store data for later visualisations in Tableau
DROP VIEW IF EXISTS v_percent_population_vaccinated ;
CREATE VIEW v_percent_population_vaccinated AS
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
FROM covid_deaths co
JOIN covid_vaccinations cv
	ON co.date = cv.date AND
    co.location = cv.location
WHERE NOT (co.continent = 'NULL') AND NOT (co.continent = 'NOT APPLICABLE')
GROUP BY co.location, co.date