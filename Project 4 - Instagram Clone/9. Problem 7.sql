-- Problem with bots. Find users who have like every single photo on the site
SELECT
	u.user_id,
    u.username,
    COUNT(*) AS num_likes
FROM users u
JOIN likes l USING(user_id)
GROUP BY u.user_id
HAVING num_likes = (SELECT COUNT(*) FROM photos)