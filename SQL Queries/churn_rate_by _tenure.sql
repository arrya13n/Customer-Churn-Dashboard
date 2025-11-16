SELECT tenure_group,
       ROUND(AVG(CASE WHEN churn='1' THEN 1 ELSE 0 END)*100,2) AS churn_rate
FROM customer_churn_data
GROUP BY tenure_group
ORDER BY churn_rate DESC;
