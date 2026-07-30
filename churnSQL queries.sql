-- Q1. Which telecommunication services are used the most by customers?

SELECT
    ROUND(AVG(total_day_minutes)::numeric, 2) AS avg_day_minutes,
    ROUND(AVG(total_eve_minutes)::numeric, 2) AS avg_evening_minutes,
    ROUND(AVG(total_night_minutes)::numeric, 2) AS avg_night_minutes,
    ROUND(AVG(total_intl_minutes)::numeric, 2) AS avg_international_minutes
FROM churn;

-- Q2. How many customers churned and how many remained? 

SELECT
    churn,
    COUNT(*) AS total_customers,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM churn
GROUP BY churn
ORDER BY churn;

-- Q3. What is the customer distribution by state?  ?

SELECT
    state,
    COUNT(*) AS total_customers
FROM churn
GROUP BY state
ORDER BY total_customers DESC;

-- Q4. What is the average number of customer service calls?

SELECT
    ROUND(AVG(customer_service_calls)::numeric,2) AS average_customer_service_calls
FROM churn;





-- Q5.  Which service plan is the most popular?
SELECT
    state,

    SUM(CASE
            WHEN international_plan = 'Yes'
            THEN 1 ELSE 0
        END) AS international_plan,

    SUM(CASE
            WHEN voice_mail_plan = 'Yes'
            THEN 1 ELSE 0
        END) AS voice_mail_plan


-- Q6.What is the average revenue generated per customer?

FROM churn

GROUP BY state

ORDER BY state;


SELECT

ROUND(
AVG(
total_day_charge+
total_eve_charge+
total_night_charge+
total_intl_charge
)::numeric,2)

AS average_revenue

FROM churn;

    
-- Q7. Do more customers have an International Plan or a Voice Mail Plan?
SELECT
    'International Plan' AS service_plan,
    COUNT(*) AS total_customers
FROM churn
WHERE international_plan='Yes'

UNION ALL

SELECT
    'Voice Mail Plan',
    COUNT(*)
FROM churn
WHERE voice_mail_plan='Yes';



-- Q8. Which states have the highest number of non-churn customers?  

SELECT
    state,
    COUNT(*) AS retained_customers
FROM churn
WHERE churn = FALSE
GROUP BY state
ORDER BY retained_customers DESC;


-- Q9. Which account length range has the highest number of customers?  
SELECT

CASE

WHEN account_length <50
THEN 'Less than 50 days'

WHEN account_length BETWEEN 50 AND 100
THEN '50-100 days'

WHEN account_length BETWEEN 101 AND 150
THEN '101-150 days'

ELSE 'More than 150 days'

END AS account_length_group,

COUNT(*) AS total_customers

FROM churn

GROUP BY account_length_group

ORDER BY total_customers DESC;


