-- Total revenue in 2020
SELECT 
	SUM(sales_amount) AS revenue_2020
FROM transactions t 
JOIN date d  
	ON t.order_date=d.date 
WHERE d.year = 2020