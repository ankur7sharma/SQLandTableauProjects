-- Investors want to know how many times does the average user post? total no of photos/ total no of users
SELECT 
	(SELECT COUNT(*) FROM photos)/(SELECT COUNT(*) FROM users) AS avg_no_of_posts