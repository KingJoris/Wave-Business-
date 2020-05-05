select sum(send_amount_scalar) as send_volume, wallets.ledger_location, transfers.kind,
count (distinct transfers.u_id) as unique_sender,
count (transfers.transfer_id) as transaction_count
from transfers, wallets
where  (transfers.when_created = DATE_TRUNC ('week', CURRENT_TIMESTAMP - interval '1 week'))
group by kind, ledger_location, u_id,transfer_id ;