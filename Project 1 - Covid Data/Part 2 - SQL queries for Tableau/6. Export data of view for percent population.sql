SELECT *
FROM v_date_per_pop
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/check.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'