LOAD DATA LOCAL INFILE 'D:/Ankur/2020-Finale/Online Courses/Projects for Resume/Data Analyst Portfolio Project 1/T2- Covid Vaccinations.csv'
-- In the LOAD DATA command, you have to write the directory of the place where you have saved your Covid Vaccinations csv file
INTO TABLE covid_vaccinations
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;
