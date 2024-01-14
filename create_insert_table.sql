-- Membuat Tabel Payments
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE NOT NULL,
    payment_amount DECIMAL(10, 3) NOT NULL,
    status VARCHAR(50) NOT NULL
);

-- Menambahkan Data ke Tabel Payments
INSERT INTO payments (payment_id, order_id, payment_date, payment_amount, status) VALUES
    (1, 1, '2024-01-13', 80.000, 'Success'),
    (2, 2, '2024-01-14', 120.000, 'Pending'),
    (3, 3, '2024-01-15', 125.500, 'Success'),
    (4, 4, '2024-01-16', 600.000, 'Failed'),
    (5, 5, '2024-01-17', 900.000, 'Pending'),
    (6, 6, '2024-01-18', 200.000, 'Success'),
    (7, 7, '2024-01-19', 25.000, 'Pending'),
    (8, 8, '2024-01-20', 400.000, 'Success'),
    (9, 9, '2024-01-21', 754.000, 'Pending'),
    (10, 10, '2024-01-22', 890.000, 'Success');
