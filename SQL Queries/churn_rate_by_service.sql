SELECT active_services,
       ROUND(AVG(CASE WHEN churn='1' THEN 1 ELSE 0 END)*100,2) AS churn_rate
FROM customer_churn_data
GROUP BY active_services
ORDER BY churn_rate DESC;
