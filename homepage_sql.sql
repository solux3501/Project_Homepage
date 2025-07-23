CREATE DATABASE board CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE board;

CREATE USER 'myuser'@'localhost' identified by 'mypassword';
GRANT ALL privileges ON BOARD.* to 'myuser'@'localhost';
FLUSH privileges;

USE board;
CREATE TABLE users(
	id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    created_at DATETIME DEFAULT current_timestamp
);