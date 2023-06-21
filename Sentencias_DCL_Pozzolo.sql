USE ProyectoFinal_Pozzolo;

CREATE USER 'usuario_lectura'@'localhost' IDENTIFIED BY 'contrasena_lectura'; -- Crea el usuario con permisos de lectura
GRANT SELECT ON proyectofinal_pozzolo.* TO 'usuario_lectura'@'localhost'; -- Se le dan permisos de lectura al usuario_lectura para todas las tablas del proyecto

CREATE USER 'usuario_modificacion'@'localhost' IDENTIFIED BY 'contrasena_modificacion'; -- Crea el usuario con permisos de lectura, inserción y modificación.
GRANT SELECT, INSERT, UPDATE ON proyectofinal_pozzolo.* TO 'usuario_modificacion'@'localhost'; -- Se le dan permisos de lectura, inserción y modificación al usuario_modificacion para todas las tablas del proyecto

REVOKE DELETE ON proyectofinal_pozzolo.* FROM 'usuario_lectura'@'localhost';
REVOKE DELETE ON proyectofinal_pozzolo.* FROM 'usuario_modificacion'@'localhost';
-- Se revocan los permisos de eliminación para ambos usuarios