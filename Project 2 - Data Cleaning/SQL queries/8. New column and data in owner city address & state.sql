-- Add new column for owner address

-- ALTER TABLE nashville_housing
-- ADD owner_split_address VARCHAR(55) AFTER owner_address

-- Fill new column owner split address
-- UPDATE nashville_housing
-- SET owner_split_address = SUBSTRING(owner_address, 1, LOCATE(',', owner_address)-1)

-- Add new column for city and state
-- ALTER TABLE nashville_housing
-- ADD owner_split_citystate VARCHAR(55) AFTER owner_split_address

-- Fill new column owner split citystate
-- UPDATE nashville_housing
-- SET owner_split_citystate =  SUBSTRING(owner_address, LOCATE(',', owner_address)+1, LENGTH(owner_address))

-- Add new column for owner city
-- ALTER TABLE nashville_housing
-- ADD owner_split_city VARCHAR(55) AFTER owner_split_citystate

-- Add new column for owner state
-- ALTER TABLE nashville_housing
-- ADD owner_split_state VARCHAR(55) AFTER owner_split_city

-- Fill new column owner split city
-- UPDATE nashville_housing
-- SET owner_split_city = SUBSTRING(owner_split_citystate, 1, LOCATE(',', owner_split_citystate)-1)

-- Fill new column owner split state
-- UPDATE nashville_housing
-- SET owner_split_state = SUBSTRING(owner_split_citystate, LOCATE(',', owner_split_citystate)+1, LENGTH(owner_split_citystate))

-- drop the temp owner split citystate column
ALTER TABLE nashville_housing
DROP owner_split_citystate