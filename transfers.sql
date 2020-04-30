CREATE TABLE transfers 
(
transfer_id integer PRIMARY KEY,
u_id integer NOT NULL,
source_wallet_id integer NOT NULL,
dest_wallet_id integer NOT NULL,
send_amount_currency text NOT NULL,
send_amount_scalar numeric NOT NULL,
receive_amount_currency text NOT NULL,
receive_amount_scalar numeric NOT NULL,
kind text NOT NULL,
dest_mobile text,
dest_merchant_id integer,
when_created timestamp without time zone NOT NULL
);