-- Contest of who can get most likes on a photo. Who won?
SELECT 
	u.username,
	p.photo_id,
    p.image_url,
	COUNT(*) AS no_of_likes
FROM photos p
JOIN likes l USING(photo_id)
JOIN users u 
	ON p.user_id = u.user_id
GROUP BY p.photo_id
ORDER BY no_of_likes DESC
LIMIT 1