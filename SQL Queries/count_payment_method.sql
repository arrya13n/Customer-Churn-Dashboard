SELECT
	payment_method,
	COUNT(*) as total_count
FROM customer_churn_data
GROUP BY payment_method;