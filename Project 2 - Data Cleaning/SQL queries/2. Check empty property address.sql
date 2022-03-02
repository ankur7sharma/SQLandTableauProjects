-- populater property address where it is null
-- we use self joins firstly to see the property address which are empty with parcel id which have an address
SELECT 
	a.parcel_id,
    a.property_address,
    b.parcel_id,
    b.property_address
FROM nashville_housing a
JOIN nashville_housing b
	ON a.parcel_id = b.parcel_id AND
    a.unique_id != b.unique_id
WHERE a.property_address IS NULL