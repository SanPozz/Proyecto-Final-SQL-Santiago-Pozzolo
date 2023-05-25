INSERT INTO users (first_name, last_name, username, email, password)
VALUES
    ('Juan', 'Perez', 'juanp', 'juanp@example.com', 'pass123'),
    ('María', 'Gomez', 'mariag', 'mariag@example.com', 'pass456'),
    ('Pedro', 'Rodriguez', 'pedror', 'pedror@example.com', 'pass789'),
    ('Ana', 'Hernández', 'anah', 'anah@example.com', 'pass987'),
    ('Carlos', 'Silva', 'carloss', 'carloss@example.com', 'pass654'),
    ('Luisa', 'Torres', 'luisat', 'luisat@example.com', 'pass321'),
    ('David', 'Flores', 'davidf', 'davidf@example.com', 'pass876'),
    ('Marta', 'Ramirez', 'martar', 'martar@example.com', 'pass543'),
    ('Andrés', 'Lopez', 'andresl', 'andresl@example.com', 'pass210'),
    ('Isabel', 'Garcia', 'isabelg', 'isabelg@example.com', 'pass879'),
    ('Fernando', 'Martinez', 'fernandom', 'fernandom@example.com', 'pass768'),
    ('Carolina', 'Sanchez', 'carolinas', 'carolinas@example.com', 'pass987'),
    ('Javier', 'Navarro', 'javiern', 'javiern@example.com', 'pass543'),
    ('Elena', 'Rojas', 'elenar', 'elenar@example.com', 'pass210'),
    ('Hugo', 'Ortega', 'hugoo', 'hugoo@example.com', 'pass879');

INSERT INTO messages (id_message, message, datetime, id_system_user_emisor, id_system_user_receptor)
VALUES
    (1, 'Hola, ¿cómo estás?', '2023-05-25', 1, 2),
    (2, '¡Felicidades por tu nuevo trabajo!', '2023-05-26', 2, 1),
    (3, 'Gracias, estoy muy emocionado.', '2023-05-27', 1, 2),
    (4, '¿Alguien quiere tomar un café?', '2023-05-28', 3, 2),
    (5, 'Sí, me gustaría. Nos vemos en el café de siempre.', '2023-05-29', 2, 3),
    (6, 'Hoy es un gran día.', '2023-05-30', 4, 3),
    (7, '¡Estoy de acuerdo!', '2023-05-31', 3, 4),
    (8, '¿Tienes algún plan para el fin de semana?', '2023-06-01', 5, 4),
    (9, 'No, aún no he decidido.', '2023-06-02', 4, 5),
    (10, '¡Deberíamos organizar una salida!', '2023-06-03', 6, 5),
    (11, 'Estaré ocupado durante la semana.', '2023-06-04', 5, 6),
    (12, '¿Qué opinas de esta idea?', '2023-06-05', 7, 6),
    (13, 'Suena interesante. Vamos a discutirlo más tarde.', '2023-06-06', 6, 7),
    (14, '¿Has visto la última película?', '2023-06-07', 8, 7),
    (15, 'Sí, me encantó. Deberíamos verla juntos.', '2023-06-08', 7, 8);
    
INSERT INTO posts (id_post, post, datetime, id_system_user)
VALUES
    (1, 'Hoy fue un día maravilloso.', '2023-05-25', 1),
    (2, 'Estoy emocionado por mi próximo viaje.', '2023-05-26', 2),
    (3, 'Recuerdos de un tiempo feliz.', '2023-05-27', 3),
    (4, 'Disfrutando de una buena comida.', '2023-05-28', 4),
    (5, 'Compartiendo mis pensamientos.', '2023-05-29', 5),
    (6, 'Nuevas aventuras esperando.', '2023-05-30', 6),
    (7, 'Una tarde relajante en casa.', '2023-05-31', 7),
    (8, 'Reflexionando sobre la vida.', '2023-06-01', 8),
    (9, 'Una caminata en la naturaleza.', '2023-06-02', 9),
    (10, 'Celebrando los pequeños logros.', '2023-06-03', 10),
    (11, 'Disfrutando de la compañía de amigos.', '2023-06-04', 11),
    (12, 'Planeando mi próximo proyecto.', '2023-06-05', 12),
    (13, 'Un día productivo en el trabajo.', '2023-06-06', 13),
    (14, 'Explorando nuevos lugares.', '2023-06-07', 14),
    (15, 'Pasando tiempo con la familia.', '2023-06-08', 15);
    
INSERT INTO comments (id_comment, id_system_user, id_post, comment)
VALUES
    (1, 2, 1, '¡Excelente publicación!'),
    (2, 3, 1, 'Estoy de acuerdo contigo'),
    (3, 1, 2, '¿Cuál es tu película favorita?'),
    (4, 3, 3, '¡Feliz cumpleaños! Que tengas un gran día'),
    (5, 1, 4, 'El parque se ve increíble'),
    (6, 2, 5, '¿Dónde fue tomada esa foto?'),
    (7, 3, 6, 'Esa receta se ve deliciosa'),
    (8, 1, 7, 'Me identifico con tus pensamientos'),
    (9, 2, 8, 'Disfruta de la naturaleza por mí también'),
    (10, 3, 9, '¡Felicidades por tus logros!'),
    (11, 1, 10, 'Me encanta pasar tiempo con amigos'),
    (12, 2, 11, 'Cuéntame más sobre tu próximo proyecto'),
    (13, 3, 12, 'Un día productivo es muy satisfactorio'),
    (14, 1, 13, 'Explorar nuevos lugares siempre es emocionante'),
    (15, 2, 14, 'El tiempo en familia es invaluable');

INSERT INTO likes (id_likes, id_post, id_system_user)
VALUES
    (1, 2, 3),
    (2, 4, 5),
    (3, 6, 7),
    (4, 8, 9),
    (5, 10, 11),
    (6, 12, 13),
    (7, 14, 15),
    (8, 1, 2),
    (9, 3, 4),
    (10, 5, 6),
    (11, 7, 8),
    (12, 9, 10),
    (13, 11, 12),
    (14, 13, 14),
    (15, 15, 1);