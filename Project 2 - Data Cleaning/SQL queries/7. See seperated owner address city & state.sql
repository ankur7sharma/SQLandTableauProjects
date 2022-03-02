SELECT
	SUBSTRING(owner_split_citystate, 1, LOCATE(',', owner_split_citystate)-1) as city,
-- here it is going to property_address, staarting at 1st value, and then going till ','. Added -1 so that ',' doesn't appear
    SUBSTRING(owner_split_citystate, LOCATE(',', owner_split_citystate)+1, LENGTH(owner_split_citystate)) as state
    -- here it goes to property_address, then it goes to ',' +1 position, and then shows value till full length of the string
FROM nashville_housing