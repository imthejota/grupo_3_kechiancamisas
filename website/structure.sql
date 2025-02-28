DROP DATABASE IF EXISTS kechian;
CREATE DATABASE kechian;

USE kechian;

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
    description VARCHAR(200) NOT NULL,
    image VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    discount INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY(category_id) REFERENCES categories(id)
);

CREATE TABLE sizes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    size VARCHAR(50) NOT NULL
);  

CREATE TABLE product_size (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL,
    size_id INT NOT NULL,
    FOREIGN KEY(product_id) REFERENCES products(id),
    FOREIGN KEY(size_id) REFERENCES sizes(id)
);

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    admin BOOLEAN NOT NULL,
    image VARCHAR(100) NOT NULL
);
