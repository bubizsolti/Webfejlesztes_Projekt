-- Adatbázis létrehozása, ha még nincs
CREATE DATABASE IF NOT EXISTS parfum_app;

USE parfum_app;

-- Parfümök tábla
CREATE TABLE parfum (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    gender ENUM('FÉRFI', 'NŐI', 'UNISEX') NOT NULL,
    image_url VARCHAR(255),
    price DECIMAL(10, 2),
    description TEXT
);

-- Illatjegyek tábla
CREATE TABLE fragrance_note (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    note VARCHAR(255) NOT NULL UNIQUE
);

-- Kapcsoló tábla a parfümök és illatjegyek közötti kapcsolatnak
CREATE TABLE parfum_fragrance_note (
    parfum_id BIGINT NOT NULL,
    fragrance_note_id BIGINT NOT NULL,
    PRIMARY KEY (parfum_id, fragrance_note_id),
    FOREIGN KEY (parfum_id) REFERENCES parfum(id) ON DELETE CASCADE,
    FOREIGN KEY (fragrance_note_id) REFERENCES fragrance_note(id) ON DELETE CASCADE
);

-- Felhasználók tábla
CREATE TABLE user (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    username VARCHAR(255) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

