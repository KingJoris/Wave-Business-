SELECT agents.country,agents.city,
SUM (agent_transactions.amount)
AS transaction_volume
FROM agents,agent_transactions 
WHERE 
(agent_transactions.when_created >= DATE_TRUNC('week',CURRENT_TIMESTAMP - interval '1 week'))
AND
agent_transactions.when_created < DATE_TRUNC ('week',CURRENT_TIMESTAMP)
GROUP BY country,city;