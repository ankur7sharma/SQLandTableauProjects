-- Distinct product codes sold in Chennai
SELECT DISTINCT product_code
FROM markets m
JOIN transactions t
	ON m.markets_code = t.market_code
WHERE markets_name = "Chennai"