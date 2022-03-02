-- Brand wants to know which hashtags to use in a post. Top 5 most commonly used hashtags
SELECT COUNT(*) AS count, tag_name
FROM photo_tags p
JOIN tags t USING(tag_id)
GROUP BY t.tag_id
ORDER BY count DESC
LIMIT 7