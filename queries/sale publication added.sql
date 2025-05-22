-- Insertar ventas (sale) con sale_code desde 100
INSERT INTO sale (sale_code, date, amount, customer_code) VALUES
(100, '2025-05-20', 250.00, 1),
(101, '2025-05-21', 699.00, 7),
(102, '2025-05-22', 120.00, 2);

-- Insertar publicaciones (publication) con publication_code desde 100
INSERT INTO publication (publication_code, title, price) VALUES
(100, 'Libro A', 500.00),
(101, 'Libro B', 300.00),
(102, 'Revista X', 100.00);

-- Insertar en sale_publication (relación ventas-publicaciones) con los nuevos códigos
INSERT INTO sale_publication (sale_code, publication_code) VALUES
(100, 100),
(101, 100),
(101, 101),
(102, 102);
