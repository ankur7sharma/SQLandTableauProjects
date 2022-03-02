-- See transactions for Chennai market
SELECT 
	m.markets_code,
    m.markets_name,
    t.product_code,
    t.order_date,
    t.sales_amount
FROM markets m
JOIN transactions t 
	ON m.markets_code = t.market_code
WHERE markets_name = "Chennai"