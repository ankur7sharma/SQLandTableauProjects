-- We have to change Y and N to Yes and No in sold as vacant

-- Here we can see using case how to change it

-- SELECT sold_as_vacant,
-- CASE WHEN sold_as_vacant = 'Y' THEN 'Yes'
-- 	 WHEN sold_as_vacant = 'N' THEN 'No'
--      ELSE sold_as_vacant
--      END AS sold_as_vacant_new
-- FROM nashville_housing

UPDATE nashville_housing
SET sold_as_vacant = CASE WHEN sold_as_vacant = 'Y' THEN 'Yes'
					 WHEN sold_as_vacant = 'N' THEN 'No'
					 ELSE sold_as_vacant
					 END