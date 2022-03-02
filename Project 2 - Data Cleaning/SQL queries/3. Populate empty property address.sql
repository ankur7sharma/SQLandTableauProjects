-- Here we will populate the empty property address with the address attached to the parcel id.
UPDATE nashville_housing a
JOIN nashville_housing b
	ON a.parcel_id = b.parcel_id AND
	a.unique_id != b.unique_id
SET a.property_address = IFNULL(a.property_address,b.property_address)
WHERE a.property_address IS NULL
