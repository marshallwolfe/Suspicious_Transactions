DROP TABLE IF EXISTS transaction;
DROP TABLE IF EXISTS merchant;
DROP TABLE IF EXISTS credit_card;
DROP TABLE IF EXISTS card_holder;
DROP TABLE IF EXISTS merchant_category;

CREATE TABLE transaction (
	id SERIAL PRIMARY KEY NOT NULL,
	date TIMESTAMP NOT NULL,
	amount MONEY NOT NULL,
	card VARCHAR(20) NOT NULL,
	id_merchant INT
);

CREATE TABLE merchant (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(50) NOT NULL,
	id_merchant_category INT NOT NULL
);

CREATE TABLE credit_card (
	card VARCHAR(20) PRIMARY KEY NOT NULL,
	id_card_holder INT NOT NULL
);

CREATE TABLE card_holder (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE merchant_category (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(20) NOT NULL
);

ALTER TABLE transaction
ADD FOREIGN KEY (card) REFERENCES credit_card (card);

ALTER TABLE transaction
ADD FOREIGN KEY (id_merchant) REFERENCES merchant (id);

ALTER TABLE credit_card
ADD FOREIGN KEY (id_card_holder) REFERENCES card_holder (id);

ALTER TABLE merchant
ADD FOREIGN KEY (id_merchant_category) REFERENCES merchant_category (id);