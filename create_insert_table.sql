CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    email VARCHAR(45) UNIQUE NOT NULL,
    phone VARCHAR(20) NOT NULL,
    address VARCHAR(45) NOT NULL,
    password VARCHAR(45) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    active BOOLEAN NOT NULL
);

-- Menambahkan Data ke Tabel customers
INSERT INTO customers (name, email, phone, address, password, active) VALUES
    ('Rinase', 'rinase@gmail.com', '123456789', 'toman street', 'rina123', true),
    ('Arata', 'arata@gmail.com', '987654321', '456 Oak St', 'arata123', true),
    ('Cifuyu', 'cifuyu@gmail.com', '555666777', 'Tokyo Valley', 'cifuyu123', false),
    ('Hinachan', 'hinachan@gmail.com', '111222333', 'Nakamisa Dori', 'hina123', true),
    ('Kisakiteta', 'teta@gmail.com', '999888777', 'omotesando', 'kisaki123', false),
	('Draken', 'draken@gmail.com', '678236278126', '10 Dotonbori e', 'drak123', false),
    ('gojoSatoru', 'gojo@gmail.com', '52353265422', '501 Kokusai Dori', 'gojo123', false),
	('Fushiguro', 'fusiguro@gmail.com', '23742736472', '202 Shijo', 'fushi123', false),
	('Riko Amanai', 'Amanai@gmail.com', '236428376376', '29 Meiji', 'riko123', false),
	('Geto Suguru', 'getto@gmail.com', '937636432', '278 Takeshita ', 'geto123', false);



-- Membuat table products
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(45) NOT NULL,
    description VARCHAR(45) UNIQUE NOT NULL,
    SKU VARCHAR(20) NOT NULL,
    price DECIMAL(5,3) NOT NULL,
    qty INT NOT NULL
);

INSERT INTO products (product_id, product_name, description, SKU, price, qty) VALUES
    (1, 'Gunting', 'Gunting mini merk Montana', 'LT1001', 1.200, 50),
    (2, 'Note book', 'Buku kecil karakter random', 'SP2001', 6.000, 80),
    (3, 'Penggaris', 'Penggaris Karakter Kuromi renceng', 'RF3001', 8.000, 30),
    (4, 'Lem cair', 'Lem cair merk Joyco', 'HP4001', 5.000, 60),
    (5, 'PulpenPH', 'Pulpen yang bisa dihapus', 'WM5001', 3.000, 20),
    (6, 'Pulpen Snowman', 'Pulpen Hitam merk snowman', 'TB6001', 2.000, 45),
    (7, 'Penghapus AN', 'Penghapus Karakter Animal', 'DC7001', 1.000, 15),
    (8, 'Buku Tulis TP', 'Buku tulis tipis isi 38', 'TV8001', 7.000, 25),
    (9, 'Tempat Pencil', 'Tempat pensil mini karakter', 'CM9001', 8.000, 40),
    (10, 'Amplop Coklat', 'Ukuran a3', 'FT1001', 3.000, 70);

-- Membuat Tabel Product Categories
CREATE TABLE IF NOT EXISTS product_categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    description TEXT
);

-- Menambahkan Data ke Tabel Product Categories
INSERT INTO product_categories (category_id, category_name, description) VALUES
    (1, 'Alat Tulis', 'Buku, pensil'),
    (2, 'Diari ', 'note book'),
    (3, 'Sekolah', 'tas penggaris'),
    (4, 'Alat Kantor', 'printer'),
    (5, 'Pribadi', 'buku diary'),
    (6, 'Koleksi', 'pulpen karakter'),
    (7, 'Mainan', 'monopoli'),
    (8, 'Kerajinan ', 'Origami'),
    (9, 'Kertas', 'Amplop Coklat'),
    (10, 'Karakter', 'Kuromi, Spidermen');

-- Membuat Tabel Orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    total_amount DECIMAL(10, 3) NOT NULL
);



-- Menambahkan Data ke Tabel Orders
INSERT INTO orders (order_id, customer_id, product_id, total_amount) VALUES
    (1, 1, 1, 800.000),
    (2, 2, 3, 40.000),
    (3, 3, 5, 200.000),
    (4, 4, 8, 600.000),
    (5, 5, 10, 900.000),
    (6, 1, 2, 160.000),
    (7, 2, 4, 243.000),
    (8, 3, 6, 420.000),
    (9, 4, 7, 305.000),
    (10, 5, 9, 154.500);
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
-- Membuat Tabel Order Details
CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    qty INT NOT NULL,
    active BOOLEAN NOT NULL
);

-- Menambahkan Data ke Tabel Order Details
INSERT INTO order_details (order_detail_id, order_id, product_id, qty, active) VALUES
    (1, 1, 1, 2, true),
    (2, 2, 3, 1, true),
    (3, 3, 5, 3, true),
    (4, 4, 8, 2, true),
    (5, 5, 10, 1, true),
    (6, 6, 2, 4, true),
    (7, 7, 4, 1, true),
    (8, 8, 6, 2, true),
    (9, 9, 7, 3, true),
    (10, 10, 9, 2, true);

