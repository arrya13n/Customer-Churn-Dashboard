SELECT 
	service_name, COUNT(*) AS total_subscriptions
FROM (
	SELECT CASE WHEN phone_service = 'Yes' THEN 'phone_service' END AS service_name FROM customer_churn_data
    UNION ALL
    SELECT CASE WHEN online_security = 'Yes' THEN 'online_security' END FROM customer_churn_data
    UNION ALL
    SELECT CASE WHEN online_backup = 'Yes' THEN 'online_backup' END FROM customer_churn_data
    UNION ALL
    SELECT CASE WHEN device_protection = 'Yes' THEN 'device_protection' END FROM customer_churn_data
    UNION ALL
    SELECT CASE WHEN tech_support = 'Yes' THEN 'tech_support' END FROM customer_churn_data
    UNION ALL
    SELECT CASE WHEN streaming_tv = 'Yes' THEN 'streaming_tv' END FROM customer_churn_data
    UNION ALL
    SELECT CASE WHEN streaming_movies = 'Yes' THEN 'streaming_movies' END FROM customer_churn_data
)as S
WHERE service_name IS NOT NULL
GROUP BY service_name
ORDER BY total_subscriptions DESC
LIMIT 5;