DELIMITER $$

-- Este SP permite ordenar la tabla que desees segun el campo y la direccion que el usuario especifique

CREATE PROCEDURE order_table_by_field(
    IN table_name VARCHAR(100),
    IN order_field VARCHAR(100),
    IN order_direction VARCHAR(4)
)
BEGIN
    SET @sql = CONCAT('SELECT * FROM ', table_name, ' ORDER BY ', order_field, ' ', order_direction);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END $$
DELIMITER ;
DELIMITER $$

-- Este SP inserta dinamicamente usuarios en la tabla users y tambien permite eliminar algun registro de la tabla que desees (segun su id) mediante un parametro de entrada llamado action

CREATE PROCEDURE insert_or_delete_dynamic(
    IN action INT,
    IN table_name VARCHAR(100),
    IN delete_id INT,
    IN first_name_value VARCHAR(40),
    IN last_name_value VARCHAR(40),
    IN username_value VARCHAR(40),
    IN email_value VARCHAR(100),
    IN password_value VARCHAR(100)
)
BEGIN
    IF action = 1 THEN
        SET @sql = CONCAT('INSERT INTO ', table_name, ' (first_name, last_name, username, email, password)',
                          ' VALUES (', QUOTE(first_name_value), ', ', QUOTE(last_name_value), ', ',
                          QUOTE(username_value), ', ', QUOTE(email_value), ', ', QUOTE(password_value), ')');
        
        PREPARE stmt FROM @sql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    ELSEIF action = 2 THEN
        SET @sql = CONCAT('DELETE FROM ', table_name, ' WHERE id_system_user = ', delete_id);
        
        PREPARE stmt FROM @sql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    END IF;
END $$

DELIMITER ;



CALL insert_or_delete_dynamic(1, 'users', NULL, 'Niko', 'Kusje', 'nicokusje', 'nikokusje@example.com', 'pass982');
select * from users where first_name = 'Niko';

CALL order_table_by_field('users', 'first_name', 'DESC');