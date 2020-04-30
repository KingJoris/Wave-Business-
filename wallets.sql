CREATE TABLE wallets (
wallet_id integer PRIMARY KEY,
currency text NOT NULL,
ledger_location text NOT NULL,
when_created timestamp without time zone NOT null
);