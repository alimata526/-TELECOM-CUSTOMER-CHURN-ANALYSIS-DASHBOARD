-- Q1. Quels services de télécommunication sont les plus utilisés par les clients ?

SELECT
    ROUND(AVG(total_day_minutes)::numeric, 2) AS avg_day_minutes,
    ROUND(AVG(total_eve_minutes)::numeric, 2) AS avg_evening_minutes,
    ROUND(AVG(total_night_minutes)::numeric, 2) AS avg_night_minutes,
    ROUND(AVG(total_intl_minutes)::numeric, 2) AS avg_international_minutes
FROM churn;

-- Q2. Combien de clients ont quitté l'entreprise et combien sont restés ?

SELECT
    churn,
    COUNT(*) AS total_customers,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM churn
GROUP BY churn
ORDER BY churn;

-- Q3. Quelle est la répartition des clients par État (State) ?

SELECT
    state,
    COUNT(*) AS total_customers
FROM churn
GROUP BY state
ORDER BY total_customers DESC;

-- Q4. Quels sont les États présentant le plus grand nombre de clients fidèles ?

SELECT
    state,
    COUNT(*) AS retained_customers
FROM churn
WHERE churn = FALSE
GROUP BY state
ORDER BY retained_customers DESC;

-- Q5. Quel est le nombre moyen d'appels effectués au service clientèle ?

SELECT
    ROUND(AVG(customer_service_calls)::numeric,2) AS average_customer_service_calls
FROM churn;


-- Q6. Quel plan de service est le plus utilisé dans chaque État ?
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

-- Q7. Quel est le revenu moyen généré par client ?

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

-- Q8. Les clients ayant un International Plan ou un Voice Mail Plan sont-ils plus nombreux ?
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

-- Q9. Quelle période d'ancienneté (Account Length) est la plus représentée ?

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

-- Q10. Quel est le profil type d'un client de l'entreprise ?
SELECT

ROUND(AVG(account_length)::numeric,2) AS avg_account_length,

ROUND(AVG(total_day_minutes)::numeric,2) AS avg_day_minutes,

ROUND(AVG(total_eve_minutes)::numeric,2) AS avg_evening_minutes,

ROUND(AVG(total_night_minutes)::numeric,2) AS avg_night_minutes,

ROUND(AVG(total_intl_minutes)::numeric,2) AS avg_international_minutes,

ROUND(AVG(customer_service_calls)::numeric,2) AS avg_customer_service_calls,

SUM(CASE WHEN international_plan='Yes' THEN 1 ELSE 0 END) AS international_plan_customers,

SUM(CASE WHEN voice_mail_plan='Yes' THEN 1 ELSE 0 END) AS voice_mail_plan_customers

FROM churn;


