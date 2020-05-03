select extract (month from when_created), sum(amount), count(atx_id)
from agent_transactions
where extract(year from when_created) = 2018
group by extract(month from when_created);
