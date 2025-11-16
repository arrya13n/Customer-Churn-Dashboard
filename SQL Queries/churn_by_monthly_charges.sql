SELECT 
    CASE 
        WHEN monthly_charges < 30 THEN 'Low'
        WHEN monthly_charges BETWEEN 30 AND 60 THEN 'Medium'
        WHEN monthly_charges BETWEEN 60 AND 90 THEN 'High'
        ELSE 'Very High'
    END AS charge_range,
    ROUND(AVG(CASE WHEN churn = '1' THEN 1 ELSE 0 END)*100, 2) AS churn_rate
FROM customer_churn_data
GROUP BY charge_range
ORDER BY churn_rate DESC;
