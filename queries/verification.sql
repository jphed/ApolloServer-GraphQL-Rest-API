-- Verificar el poeta "Jorge Parra"
SELECT * FROM poet WHERE first_name = 'Jorge' AND surname = 'Parra';

-- Verificar el poema "fortnite" creado por el poeta con poet_code = 5
SELECT * FROM poem WHERE poem_title = 'fortnite' AND poet_code = 5;

-- Verificar el cliente "Jose Holguin"
SELECT * FROM customer WHERE first_name = 'Jose' AND surname = 'Holguin';

-- Verificar la venta con customer_code = 7 y fecha 2025-05-21
SELECT * FROM sale WHERE customer_code = 7 AND date = '2025-05-21' AND amount = 699;
