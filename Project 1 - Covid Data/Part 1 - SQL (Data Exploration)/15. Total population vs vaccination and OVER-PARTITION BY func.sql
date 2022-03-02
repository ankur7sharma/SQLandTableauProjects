-- looking at total population vs vaccinations
-- for rolling_people_vaccinated, we use window function OVER and PARTITION BY to separate sum by country
USE project_covid;
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