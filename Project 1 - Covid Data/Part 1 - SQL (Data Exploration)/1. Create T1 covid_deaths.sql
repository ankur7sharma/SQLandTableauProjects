CREATE DATABASE IF NOT EXISTS project_covid;
USE project_covid;
CREATE TABLE IF NOT EXISTS covid_deaths
(
	iso_code CHAR(4),
    continent VARCHAR(55),
    location VARCHAR(55),
    date CHAR(10),
    population INT,
    total_cases INT,
    new_cases INT,
    new_cases_smoothed DECIMAL(12,3),
    total_deaths INT,
    new_deaths INT,
    new_deaths_smoothed DECIMAL(12,3),
    total_cases_per_million DECIMAL(12,3),
    new_cases_per_million DECIMAL(12,3),
    new_cases_smoothed_per_million DECIMAL(12,3),
    total_deaths_per_million DECIMAL(12,3),
    new_deaths_per_million DECIMAL(12,3),
    new_deaths_smoothed_per_million DECIMAL(12,3),
    reproduction_rate DECIMAL(9,2),
    icu_patients INT,
    icu_patients_per_million DECIMAL(12,3),
    hosp_patients INT,
    hosp_patients_per_million DECIMAL(12,3),
    weekly_icu_admissions INT,
    weekly_icu_admissions_per_million DECIMAL(12,3),
    weekly_hosp_admissions INT,
    weekly_hosp_admissions_per_million DECIMAL(12,3)
);