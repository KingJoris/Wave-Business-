select (agent_id),sum(amount)
from agent_transactions 
where when_created > now ()-
interval '1 week'
group by agent_id;
