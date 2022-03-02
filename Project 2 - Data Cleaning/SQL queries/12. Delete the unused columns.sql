-- Now we will delete the unused columns
ALTER TABLE nashville_housing
DROP owner_address, 
DROP property_address, 
DROP tax_district