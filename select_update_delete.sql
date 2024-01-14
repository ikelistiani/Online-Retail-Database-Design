-- Mengambil Data dari Tabel Barang
SELECT * FROM customers;

-- Mengambil Data dari Tabel pesanan
SELECT * FROM orders;

-- Mengambil Data dari Tabel pembayaran
SELECT * FROM payments;

-- Mengambil Data dari barang
SELECT * FROM products;

-- Mengambil Data dari detail pesanan
SELECT * FROM order_details

-- Mengubah Harga Barang dengan ID 2
UPDATE Products SET price = 25.000 WHERE product_id = 2;

-- Menghapus Pesanan dengan ID 3
DELETE FROM Orders WHERE order_id = 3;

-- Menghapus Tabel Detail Pesanan
DROP TABLE order_details;

-- Menghapus Database jualan_atk
DROP DATABASE jualan_atk
