select agents.city,
SUM (agent_transactions.amount)
as transaction_volume
from agent_transactions,agents 
where 
(agent_transactions.when_created = DATE_TRUNC('week',CURRENT_TIMESTAMP - interval '1 week'))
and 
agent_transactions.when_created < DATE_TRUNC ('week',CURRENT_TIMESTAMP)
group by city;

