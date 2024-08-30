-- Crear base de datos con MySQL
CREATE DATABASE GameR;

USE GameR;

-- Crear tabla usuario
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email INT,
    password_ INT,
    trophies INT
);

-- Crear tabla juego
CREATE TABLE game (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    gener INT NOT NULL,
    duration INT,
    price INT NOT NULL,
    qualification INT NOT NULL,
    comment INT,
    FOREIGN KEY (comment_id) REFERENCES comentarios(id)
);

-- Crear tabla desarrollador
CREATE TABLE developer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    catalog INT,
    qualification INT NOT NULL,
    FOREIGN KEY(Game_id) REFERENCES juegos(id)
);

-- Crear tabla genero
CREATE TABLE gender (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    FOREIGN KEY(Game_id) REFERENCES juegos(id)
    
);

-- Crear tabla comentario
CREATE TABLE comment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    qualification INT NOT NULL,
    FOREIGN KEY(user_id) REFERENCES usuarios(id)
);