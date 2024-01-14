SELECT AVG(payment_amount) as average_transaction
FROM payments
WHERE payment_date >= CURDATE() - INTERVAL 1 MONTH;