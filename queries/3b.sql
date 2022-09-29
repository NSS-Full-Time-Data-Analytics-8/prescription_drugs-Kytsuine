SELECT generic_name, ROUND(SUM(total_drug_cost)/SUM(total_day_supply), 2) AS cost_per_day
FROM drug
INNER JOIN prescription USING(drug_name)
GROUP BY generic_name
ORDER BY cost_per_day DESC;