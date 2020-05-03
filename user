SELECT sum (send_amount_scalar) 
AS send_volume,
wallet.ledger_location,
transfers.kind
FROM transfers,wallets
WHERE (transfers.when_created = DATE_TRUNC('week',CURRENT_TIMESTAMP-INTERVAL 'one week'))
GROUP BY kind,ledger_location