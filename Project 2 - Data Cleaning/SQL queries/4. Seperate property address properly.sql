-- We have to break down the owner address and property address into address, city and state
SELECT
	SUBSTRING(property_address, 1, LOCATE(',', property_address)-1) as address,
-- here it is going to property_address, staarting at 1st value, and then going till ','. Added -1 so that ',' doesn't appear
    SUBSTRING(property_address, LOCATE(',', property_address)+1, LENGTH(property_address)) as city
-- here it goes to property_address, then it goes to ',' +1 position, and then shows value till full length of the string
    FROM nashville_housing