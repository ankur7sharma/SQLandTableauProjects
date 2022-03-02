SELECT
    SUM(new_cases) AS total_cases,
    SUM(new_deaths) AS total_deaths,
    (SUM(new_deaths)/SUM(new_cases))*100 AS death_percentage
FROM covid_deaths
