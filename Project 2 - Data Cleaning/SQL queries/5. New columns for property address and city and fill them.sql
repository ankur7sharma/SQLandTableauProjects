-- Now we will make separate columns for address and city of property

-- ALTER TABLE nashville_housing
--  	ADD property_split_address VARCHAR(55) AFTER property_address

-- Now with above code, new column added. So we will add details in the new column

-- UPDATE nashville_housing
-- SET property_split_address = SUBSTRING(property_address, 1, LOCATE(',', property_address)-1)    

-- Now we will make separate column for city
-- ALTER TABLE nashville_housing
-- ADD property_split_city VARCHAR(55) AFTER property_split_address

-- With above code new column added, so we will add details in city

UPDATE nashville_housing
SET property_split_city = SUBSTRING(property_address, LOCATE(',', property_address)+1, LENGTH(property_address))