-- We want totarget our inactive users with an email campaign. Find users who have never posted a photo
SELECT 
	u.user_id,
    u.username
FROM users u 
LEFT JOIN photos p USING(user_id)
WHERE p.photo_id IS NULL