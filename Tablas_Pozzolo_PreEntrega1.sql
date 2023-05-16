CREATE SCHEMA ProyectoFinal_Pozzolo;

USE ProyectoFinal_Pozzolo;

CREATE TABLE users (
    id_system_user INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    username VARCHAR(40) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE messages (
	id_message INT AUTO_INCREMENT PRIMARY KEY,
    message VARCHAR(120) NOT NULL,
    datetime DATE NOT NULL,
    id_system_user_emisor INT NOT NULL,
    id_system_user_receptor INT NOT NULL,
    FOREIGN KEY (id_system_user_emisor) REFERENCES users (id_system_user),
    FOREIGN KEY (id_system_user_receptor) REFERENCES users (id_system_user)
);

CREATE TABLE posts (
    id_post INT AUTO_INCREMENT PRIMARY KEY,
    post VARCHAR(120) NOT NULL,
    datetime DATE NOT NULL,
    id_system_user INT NOT NULL,
    id_likes INT NOT NULL,
    FOREIGN KEY (id_system_user) REFERENCES users (id_system_user)
);

CREATE TABLE comments (
    id_comment INT AUTO_INCREMENT PRIMARY KEY,
    id_system_user INT NOT NULL,
    id_post INT NOT NULL,
    comment VARCHAR(120) NOT NULL,
    FOREIGN KEY (id_system_user) REFERENCES users (id_system_user),
    FOREIGN KEY (id_post) REFERENCES posts (id_post)
);

CREATE TABLE likes (
	id_likes INT AUTO_INCREMENT PRIMARY KEY,
    id_post INT NOT NULL,
    amount_likes INT NOT NULL,
    FOREIGN KEY (id_post) REFERENCES posts (id_post)
);

ALTER TABLE posts
ADD COLUMN id_comment INT NOT NULL,
ADD FOREIGN KEY (id_comment) REFERENCES comments (id_comment);

ALTER TABLE posts
ADD FOREIGN KEY (id_likes) REFERENCES likes (id_likes);

