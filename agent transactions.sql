

CREATE TABLE agent_transactions (
atx_id integer PRIMARY KEY,
u_id integer NOT NULL,
agent_id integer NOT NULL,
amount numeric NOT NULL,
fee_amount_scalar numeric NOT NULL,
city text,
when_created timestamp without time zone NOT NULL,
);