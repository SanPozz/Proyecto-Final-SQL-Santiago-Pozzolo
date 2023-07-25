USE ProyectoFinal_Pozzolo;

-- Funciones

DELIMITER $$

-- Esta funcion consulta a la base de datos la cantidad de posts que hizo un usuario mediante su id

CREATE FUNCTION get_post_count(user_id INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE post_count INT;
    SET post_count = (SELECT COUNT(*) FROM posts WHERE id_system_user = user_id);
    RETURN post_count;
END$$
     
-- Esta funcion consulta a la base de datos el nombre y apellido de un usuario mediante su id y lo devuelve completo
-- Ya funciona
DELIMITER $$

CREATE FUNCTION get_full_name(user_id INT) RETURNS VARCHAR(80)
DETERMINISTIC
BEGIN
    DECLARE f_name VARCHAR(40);
    DECLARE l_name VARCHAR(40);
    DECLARE full_name VARCHAR(80);
    
    SELECT first_name, last_name INTO f_name, l_name FROM users WHERE id_system_user = user_id;
    SET full_name = CONCAT(f_name, ' ', l_name);
    
    RETURN full_name;
END$$

DELIMITER $$
CREATE FUNCTION get_user_message_count(user_id INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE message_count INT;
    
    SELECT COUNT(*) INTO message_count FROM messages WHERE id_system_user_emisor = user_id;
    
    RETURN message_count;
END $$

DELIMITER ;
SELECT get_post_count(1) AS cantidad_de_posts_del_usuario;

SELECT get_full_name(13) AS Nombre_Completo; -- Ya funciona

SELECT get_user_message_count(1) AS Cantidad_de_Mensajes;
