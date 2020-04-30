CREATE TABLE users(
u_id integer PRIMARY KEY,
 name text NOT NULL,
mobile text NOT NULL,
mail text,
wallet_id integer NOT NULL,
when_created timestamp without time zone NOT NULL
);
