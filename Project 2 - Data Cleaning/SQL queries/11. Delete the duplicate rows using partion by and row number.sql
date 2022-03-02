-- here we will delete the duplicate rows
DELETE FROM nashville_housing
WHERE unique_id IN 
(
	SELECT unique_id
	FROM (
		SELECT *,
			ROW_NUMBER()
			OVER 
			(
				PARTITION BY parcel_id,
							 property_address,
							 sale_price,
							 sale_date,
							 legal_reference
				ORDER BY unique_id
			) AS row_num
		FROM nashville_housing
	) AS temp
	WHERE row_num > 1
)