-- We want to reward the users who have been around the longest. Find the 5 oldest users
SELECT *
FROM users
ORDER BY created_at
LIMIT 5