CREATE TABLE card_holder (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE credit_card (
    card VARCHAR(20) PRIMARY KEY,
    card_holder_id INT REFERENCES card_holder(id)
);

CREATE TABLE merchant_category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE merchant (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    id_merchant_category INT REFERENCES merchant_category(id)
);

CREATE TABLE transaction (
    id SERIAL PRIMARY KEY,
    date TIMESTAMP,
    amount INT,
    card VARCHAR REFERENCES credit_card(card),
    id_merchant INT REFERENCES merchant(id)
);

-- isolate and count small transaction per cardholder

CREATE OR REPLACE VIEW small_transaction_counts AS
SELECT ch.name AS cardholder_name,
       COUNT(*) AS small_transaction_count
FROM card_holder ch
JOIN credit_card cc ON ch.id = cc.card_holder_id
JOIN "transaction" t ON cc.card = t.card
WHERE t.amount < 2
GROUP BY cardholder_name;

-- fraudulent transactions by time

CREATE OR REPLACE VIEW potential_fraud_transactions AS
SELECT t.id,
       t.date,
       t.amount,modu
       m.name AS merchant_name
FROM "transaction" t
JOIN merchant m ON t.id_merchant = m.id
WHERE EXTRACT(HOUR FROM t.date) BETWEEN 7 AND 9
ORDER BY t.amount DESC
LIMIT 100;


-- filter top 5 merchants with small transactions

CREATE OR REPLACE VIEW top_small_transaction_merchants AS
SELECT m.name AS merchant_name,
       COUNT(*) AS small_transaction_count
FROM merchant m
JOIN "transaction" t ON m.id = t.id_merchant
WHERE t.amount < 2
GROUP BY merchant_name
ORDER BY small_transaction_count DESC
LIMIT 5;

SELECT * FROM transaction