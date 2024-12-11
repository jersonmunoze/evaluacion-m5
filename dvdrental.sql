-- Jerson Muñoz Espinoza - M5 - Evaluación 

-- ----------- Creacion, actualización y eliminación de Customer -----------

-- Crea customer (db lo registra con el customer_id = 601)
-- ** se usó un store_id ya creado con valor 2 del archivo .tar**
INSERT INTO customer(store_id, first_name, last_name, email, address_id) VALUES (2 , 'Tulio', 'Triviño', 'tulio@31minutos.cl', 1);
-- Actualiza el email del customer
UPDATE customer SET email = 'tulio@gmail.com' where customer_id = 601;
-- Elimina el customer
DELETE FROM customer WHERE customer_id = 601;

-- ----------- Creacion, actualización y eliminación de Staff -----------

-- Crea actor (db lo registra con el staff_id = 5)
INSERT INTO staff(first_name, last_name, email, address_id, store_id, username, password) VALUES ('Policarpo', 'Avendaño', 'policarpo@gmail.com', 1, 1, 'policarpo01','pass1234');
-- Actualiza el username del staff
UPDATE staff SET username = 'poliavedano01' WHERE staff_id = 5;
-- Elimina el staff
DELETE FROM staff WHERE staff_id = 5;

-- ----------- Creacion, actualización y eliminación de  -----------

-- Crea actor (db lo registra con el actor_id = 201)
INSERT INTO actor(first_name, last_name) VALUES ('Ryan','Reynolds');
-- Actualiza el apellido del actor usando el id
UPDATE actor SET last_name = 'Gosling' WHERE actor_id = 201;
-- Elimina el actor creado por el id
DELETE FROM actor WHERE actor_id = 201;


-- -------------------- Listados ------------------------------

-- Listar todas las rental con datos del 'customer' dado un año y mes
-- Se listó para el mes de mayo de 2005

SELECT * FROM rental AS r 
INNER JOIN customer AS c ON r.customer_id = c.customer_id
WHERE DATE_PART('year',r.rental_date) = 2005 AND DATE_PART('month', r.rental_date) = 5;

-- Listar número, fecha (payment_date) y total (amount) de todas las 'payment'
-- ** Nota: asumí el número como el payment_id **

SELECT payment_id, payment_date, amount FROM payment;

-- Listar todas las film del año 2006 que contengan un (rental_rate) mayor a 4.0
SELECT DISTINCT * FROM film AS f WHERE f.release_year = 2006 AND f.rental_rate > 4.0;

-- Diccionario de datos se adjunta en repositorio como un Excel para su revisión