-- What day of the week most users register on? We need to figure out when to schedule an add campaign
SELECT 
	DAYNAME(created_at) AS day,
    COUNT(*) AS frequency
FROM users
GROUP BY day
ORDER BY frequency DESC