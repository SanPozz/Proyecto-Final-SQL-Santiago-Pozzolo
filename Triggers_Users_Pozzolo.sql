USE ProyectoFinal_Pozzolo;

-- Creacion de tablas log

CREATE TABLE users_update_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    action VARCHAR(50),
    action_date DATETIME,
    action_details VARCHAR(60)
);

CREATE TABLE user_insert_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    inserted_by VARCHAR(100),
    insert_date DATETIME
);

DELIMITER $$

-- Este trigger sirve para que registre en una tabla de logs que update se hizo, la fecha en la que se hizo y en que user se hizo.

CREATE TRIGGER users_log_after_update
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    DECLARE action_text VARCHAR(255);
    
    IF NEW.first_name <> OLD.first_name THEN
        SET action_text = CONCAT('First Name Update: ', OLD.first_name, ' -> ', NEW.first_name);
    ELSEIF NEW.last_name <> OLD.last_name THEN
        SET action_text = CONCAT('Last Name Update: ', OLD.last_name, ' -> ', NEW.last_name);
    ELSEIF NEW.username <> OLD.username THEN
        SET action_text = CONCAT('Username Update: ', OLD.username, ' -> ', NEW.username);
    ELSEIF NEW.email <> OLD.email THEN
        SET action_text = CONCAT('Email Update: ', OLD.email, ' -> ', NEW.email);
    ELSEIF NEW.password <> OLD.password THEN
        SET action_text = 'Password Update';
    END IF;

    INSERT INTO users_update_log (user_id, action, action_date, action_details)
    VALUES (NEW.id_system_user, 'UPDATE', NOW(), action_text);
END $$

DELIMITER ;

DELIMITER $$

-- Este trigger se activa antes de insertar un usuario y registra en una tabla de logs el id del usuario que va a insertarse  la fecha en la que se inserta y la persona que lo inserta.

CREATE TRIGGER before_insert_user
AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO user_insert_log (user_id, inserted_by, insert_date)
    VALUES (NEW.id_system_user, USER(), NOW());
END $$

DELIMITER ;

UPDATE users SET first_name = 'Ivan' WHERE id_system_user = 1;
select * from users_update_log;

INSERT INTO users (first_name, last_name, username, email, password) 
VALUES ('pablo', 'pirez', 'ppirez', 'ppirez@example.com', 'password583');
select * from user_insert_log;
