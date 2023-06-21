select * from users;
DELIMITER $$
START TRANSACTION;
SELECT COUNT(*) INTO @count FROM tabla1;

IF @count > 0 THEN
    -- Eliminar algunos registros de la tabla
    DELETE FROM users WHERE id_system_user = 20;
    DELETE FROM users WHERE id_system_user = 19;
    DELETE FROM users WHERE id_system_user = 18;
    DELETE FROM users WHERE id_system_user = 17;
    -- ROLLBACK; 
ELSE

   INSERT INTO users (first_name, last_name, username, email, password) VALUES ('Fabri', 'Lopez', 'fabril', 'fabril@example.com', 'pass923');
   
END IF;

-- COMMIT; 
$$


START TRANSACTION;

INSERT INTO posts (post, datetime, id_system_user)
VALUES
    ('Haciendo ejercicio al aire libre.', '2023-06-02', 9),
    ('Descubriendo nuevas recetas de cocina.', '2023-06-03', 10),
    ('Disfrutando de la naturaleza.', '2023-06-04', 11),
    ('Compartiendo momentos familiares.', '2023-06-05', 12);

SAVEPOINT savepoint1;

INSERT INTO posts (post, datetime, id_system_user)
VALUES
    ('Explorando la ciudad en bicicleta.', '2023-06-06', 13),
    ('Planeando unas vacaciones emocionantes.', '2023-06-07', 14),
    ('Aprendiendo a tocar un instrumento musical.', '2023-06-08', 15),
    ('Disfrutando de una tarde de lectura.', '2023-06-09', 16);

SAVEPOINT savepoint2;

-- RELEASE SAVEPOINT savepoint1;
-- ROLLBACK TO savepoint1;
-- COMMIT; 