USE ProyectoFinal_Pozzolo;

-- Correcion

INSERT INTO posts (post, datetime, id_system_user) VALUES
    ('Este es un post de prueba 6', '2023-06-08', 3),
    ('Nuevo post interesante', '2023-06-09', 2),
    ('Saludos desde la playa', '2023-06-10', 4),
    ('Un día soleado en la ciudad', '2023-06-11', 1),
    ('¿Qué opinan sobre el nuevo libro?', '2023-06-12', 5),
    ('Recordando viejos tiempos', '2023-06-13', 3),
    ('Compartiendo una receta deliciosa', '2023-06-14', 2),
    ('Explorando nuevos lugares', '2023-06-15', 4),
    ('Felicidades a todos los graduados', '2023-06-16', 1),
    ('Reflexiones sobre la vida', '2023-06-17', 5),
    ('Celebrando el inicio de las vacaciones', '2023-06-18', 3),
    ('¡Nuevo proyecto en marcha!', '2023-06-19', 2),
    ('Una imagen vale más que mil palabras', '2023-06-20', 4),
    ('Compartiendo momentos especiales', '2023-06-21', 1),
    ('De vuelta al trabajo', '2023-06-22', 5);
    
INSERT INTO comments (id_system_user, id_post, comment) VALUES
    (2, 1, '¡Excelente post! Me encantó'),
    (3, 1, 'Gracias por compartir'),
    (4, 2, 'Interesante, ¿tienes más información?'),
    (5, 2, 'Totalmente de acuerdo'),
    (1, 3, 'Qué envidia, me encantaría estar en la playa ahora'),
    (3, 3, '¡Saludos desde otro destino paradisíaco!'),
    (4, 4, 'Bonito día, disfruta el sol'),
    (2, 4, 'Me encanta el clima de la ciudad'),
    (5, 5, 'El libro es increíble, definitivamente lo recomiendo'),
    (1, 5, 'Estoy deseando leerlo'),
    (3, 6, 'Qué recuerdos tan hermosos'),
    (4, 6, '¡Yo también los recuerdo!'),
    (1, 7, '¿Puedes compartir la receta?'),
    (2, 7, 'Claro, aquí está la receta completa'),
    (5, 8, '¿A qué lugar estás explorando?'),
    (3, 8, 'Estoy explorando una nueva ciudad'),
    (4, 9, '¡Felicitaciones a todos los graduados!'),
    (2, 9, '¡Gracias! Fue un gran logro'),
    (1, 10, 'Reflexiones profundas, me hicieron pensar'),
    (5, 10, 'La vida es un constante aprendizaje'),
    (2, 11, '¡Disfruta tus vacaciones!'),
    (4, 11, 'Gracias, lo estoy pasando genial'),
    (3, 12, '¡Qué emocionante! ¿En qué consiste el proyecto?'),
    (1, 12, 'Es un proyecto de investigación en medicina'),
    (4, 13, 'La imagen es espectacular'),
    (2, 13, 'Me alegra que te guste'),
    (5, 14, '¡Hermosos momentos compartidos!'),
    (3, 14, 'Son recuerdos que atesoraré siempre'),
    (1, 15, 'De vuelta a la rutina laboral'),
    (2, 15, 'Espero que tengas un buen día de trabajo');
    
INSERT INTO likes (id_likes, id_post, id_system_user)
VALUES
	(16, 2, 5),
	(17, 3, 1),
	(18, 1, 2),
	(19, 4, 6),
	(20, 3, 4),
	(21, 5, 2),
	(22, 2, 3),
	(23, 1, 4),
	(24, 5, 6),
	(25, 3, 5),
	(26, 2, 1),
	(27, 4, 2),
	(28, 1, 5),
	(29, 5, 3),
	(30, 2, 4),
	(31, 3, 6),
	(32, 4, 1),
	(33, 5, 2),
	(34, 1, 5),
	(35, 2, 3),
	(36, 4, 6),
	(37, 3, 4),
	(38, 5, 1),
	(39, 1, 3),
	(40, 4, 5);
    
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
-- No funciona y no entiendo porque
DELIMITER $$

CREATE FUNCTION get_full_name(user_id INT) RETURNS VARCHAR(80)
DETERMINISTIC
BEGIN
    DECLARE first_name VARCHAR(40);
    DECLARE last_name VARCHAR(40);
    DECLARE full_name VARCHAR(80);
    
    SELECT first_name, last_name INTO first_name, last_name FROM users WHERE id_system_user = user_id;
    SET full_name = CONCAT(first_name, ' ', last_name);
    
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

SELECT get_full_name(1) AS Nombre_Completo; -- No funciona

SELECT get_user_message_count(1) AS Cantidad_de_Mensajes;
