-- here we want to use the max value from rolling_people _vaccinated and divide it by population to know how many percent of population
-- is vaccinated
-- So let's use temporary table here. Same previous problem with different method.
DROP TABLE IF EXISTS percent_population_vaccinated;
CREATE TABLE percent_population_vaccinated
(
	continent VARCHAR(55),
    location VARCHAR(55),
    date DATE,
    population INT,
    new_vaccinations BIGINT,
    rolling_people_vaccinated BIGINT
);
INSERT INTO percent_population_vaccinated
(
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
);
SELECT *, (rolling_people_vaccinated/population)*100 AS percent_people_vaccinated
FROM percent_population_vaccinated