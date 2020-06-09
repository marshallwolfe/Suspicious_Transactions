SELECT * FROM card_holder
JOIN credit_card ON (card_holder.id = credit_card.id_card_holder)
JOIN transaction ON (credit_card.card = transaction.card)
WHERE credit_card.id_card_holder = 2 OR credit_card.id_card_holder = 18;

SELECT * FROM card_holder
JOIN credit_card ON (card_holder.id = credit_card.id_card_holder)
JOIN transaction ON (credit_card.card = transaction.card);

SELECT * FROM merchant_category
JOIN merchant ON (merchant_category.id = merchant.id_merchant_category)
JOIN transaction ON (merchant.id = transaction.id_merchant);

SELECT * FROM card_holder
JOIN credit_card ON (card_holder.id = credit_card.id_card_holder)
JOIN transaction ON (credit_card.card = transaction.card)
WHERE credit_card.id_card_holder = 25 AND date BETWEEN '2018-01-01' AND '2018-07-01';

