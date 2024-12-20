use parfum_app;

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



-- Illatjegyek hozzáadása
INSERT INTO fragrance_note (note) VALUES
('Ananász'),
('Levendula'),
('Citrom'),
('Tengeri jegyek'),
('Jázmin'),
('Agarfa'),
('Aromás jegyek'),
('Ámbra'),
('Karamell'),
('Pacsuli');

-- Dominance parfüm hozzáadása
INSERT INTO parfum (name, gender, price) VALUES
('Dominance', 'Férfi', 28000);

-- Dominance parfüm és illatjegyek kapcsolata
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id) VALUES
(1, 1),  -- Dominance -> Ananász
(1, 2),  -- Dominance -> Levendula
(1, 3),  -- Dominance -> Citrom
(1, 4),  -- Dominance -> Tengeri jegyek
(1, 5),  -- Dominance -> Jázmin
(1, 6),  -- Dominance -> Agarfa
(1, 7),  -- Dominance -> Aromás jegyek
(1, 8),  -- Dominance -> Ámbra
(1, 9),  -- Dominance -> Karamell
(1, 10); -- Dominance -> Pacsuli

ALter table parfum
modify column price int;


-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Dohány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Dohány');
INSERT INTO fragrance_note (note)
SELECT 'Meleg fűszerek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Meleg fűszerek');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Édes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Édes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Gyümölcsös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyümölcsös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Kakaó' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kakaó');
INSERT INTO fragrance_note (note)
SELECT 'Púderes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Púderes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Fás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Tonkabab' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tonkabab');

-- Gentleman parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Gentleman', 'FÉRFI', 30000);


-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Dohány', 'Meleg fűszerek', 'Vanília', 'Édes jegyek', 'Gyümölcsös jegyek', 'Kakaó', 'Púderes jegyek', 'Fás jegyek', 'Tonkabab')
WHERE p.name = 'Gentleman';


-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Alma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Alma');
INSERT INTO fragrance_note (note)
SELECT 'Levendula' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Levendula');
INSERT INTO fragrance_note (note)
SELECT 'Rózsabors' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsabors');
INSERT INTO fragrance_note (note)
SELECT 'Friss jegyek (Bergamott)' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Friss jegyek (Bergamott)');
INSERT INTO fragrance_note (note)
SELECT 'Virágos jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Virágos jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ibolya' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ibolya');
INSERT INTO fragrance_note (note)
SELECT 'Guajakfa és Szantálfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Guajakfa és Szantálfa');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Kardamom' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kardamom');
INSERT INTO fragrance_note (note)
SELECT 'Pacsuli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pacsuli');
INSERT INTO fragrance_note (note)
SELECT 'Pézsmás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsmás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
-- 1723 parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('1723', 'FÉRFI', 31000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Alma', 'Levendula', 'Rózsabors', 'Friss jegyek (Bergamott)', 'Virágos jegyek', 'Ibolya', 'Guajakfa és Szantálfa', 'Vanília', 'Kardamom', 'Pacsuli', 'Pézsmás jegyek', 'Ámbra')
WHERE p.name = '1723';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Bergamott és Mandarin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bergamott és Mandarin');
INSERT INTO fragrance_note (note)
SELECT 'Rózsabors' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsabors');
INSERT INTO fragrance_note (note)
SELECT 'Vetiver' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vetiver');
INSERT INTO fragrance_note (note)
SELECT 'Aromás jegyek – Gyógynövények' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Aromás jegyek – Gyógynövények');
INSERT INTO fragrance_note (note)
SELECT 'Gyöngyvirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyöngyvirág');
INSERT INTO fragrance_note (note)
SELECT 'Pacsuli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pacsuli');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Fás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Tonkabab' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tonkabab');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
INSERT INTO fragrance_note (note)
SELECT 'Levendula' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Levendula');
-- Caesar parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Caesar', 'FÉRFI', 32000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Bergamott és Mandarin', 'Rózsabors', 'Vetiver', 'Aromás jegyek – Gyógynövények', 'Gyöngyvirág', 'Pacsuli', 'Rózsa', 'Fás jegyek', 'Ámbra', 'Tonkabab', 'Jázmin', 'Levendula')
WHERE p.name = 'Caesar';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Lime' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Lime');
INSERT INTO fragrance_note (note)
SELECT 'Gyömbér' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyömbér');
INSERT INTO fragrance_note (note)
SELECT 'Írisz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Írisz');
INSERT INTO fragrance_note (note)
SELECT 'Magnólia' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Magnólia');
INSERT INTO fragrance_note (note)
SELECT 'Aromás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Aromás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Sáfrány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Sáfrány');
INSERT INTO fragrance_note (note)
SELECT 'Pacsuli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pacsuli');
INSERT INTO fragrance_note (note)
SELECT 'Fás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Pézsmás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsmás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
-- Caesar Ultra parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Caesar Ultra', 'FÉRFI', 52000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Lime', 'Gyömbér', 'Írisz', 'Magnólia', 'Aromás jegyek', 'Sáfrány', 'Pacsuli', 'Fás jegyek', 'Pézsmás jegyek', 'Ámbra', 'Rózsa')
WHERE p.name = 'Caesar Ultra';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Grapefruit' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Grapefruit');
INSERT INTO fragrance_note (note)
SELECT 'Alma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Alma');
INSERT INTO fragrance_note (note)
SELECT 'Ananász' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ananász');
INSERT INTO fragrance_note (note)
SELECT 'Fahéj' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fahéj');
INSERT INTO fragrance_note (note)
SELECT 'Citrom' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Citrom');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Rózsabors' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsabors');
INSERT INTO fragrance_note (note)
SELECT 'Gyöngyvirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyöngyvirág');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Cédrusfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Cédrusfa');
INSERT INTO fragrance_note (note)
SELECT 'Tonkabab' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tonkabab');
-- Dominance Gold parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Dominance Gold', 'FÉRFI', 30000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Grapefruit', 'Alma', 'Ananász', 'Fahéj', 'Citrom', 'Rózsa', 'Rózsabors', 'Gyöngyvirág', 'Vanília', 'Cédrusfa', 'Tonkabab')
WHERE p.name = 'Dominance Gold';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Citrom és Bergamott' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Citrom és Bergamott');
INSERT INTO fragrance_note (note)
SELECT 'Tengeri jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tengeri jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Palka' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Palka');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Pézsmás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsmás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Pacsuli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pacsuli');
INSERT INTO fragrance_note (note)
SELECT 'Szantálfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szantálfa');
INSERT INTO fragrance_note (note)
SELECT 'Mohás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Mohás jegyek');
-- Endless Sea parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Endless Sea', 'FÉRFI', 36000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Citrom és Bergamott', 'Tengeri jegyek', 'Palka', 'Rózsa', 'Pézsmás jegyek', 'Ámbra', 'Pacsuli', 'Szantálfa', 'Mohás jegyek')
WHERE p.name = 'Endless Sea';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Agarfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Agarfa');
INSERT INTO fragrance_note (note)
SELECT 'Sáfrány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Sáfrány');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Málna' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Málna');
INSERT INTO fragrance_note (note)
SELECT 'Bőrös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bőrös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Palka' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Palka');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Fahéj' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fahéj');
INSERT INTO fragrance_note (note)
SELECT 'Bergamott és lime' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bergamott és lime');
INSERT INTO fragrance_note (note)
SELECT 'Szantálfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szantálfa');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Fehér Pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fehér Pézsma');
INSERT INTO fragrance_note (note)
SELECT 'Illatozó muskátli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Illatozó muskátli');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
-- Finom Istálló parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Finom Istálló', 'FÉRFI', 34000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Agarfa', 'Sáfrány', 'Rózsa', 'Málna', 'Bőrös jegyek', 'Palka', 'Vanília', 'Fahéj', 'Bergamott és lime', 'Szantálfa', 'Ámbra', 'Fehér Pézsma', 'Illatozó muskátli', 'Jázmin')
WHERE p.name = 'Finom Istálló';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Sáfrány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Sáfrány');
INSERT INTO fragrance_note (note)
SELECT 'Agarfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Agarfa');
INSERT INTO fragrance_note (note)
SELECT 'Bulgár Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bulgár Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Tonkabab' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tonkabab');
INSERT INTO fragrance_note (note)
SELECT 'Fehér Pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fehér Pézsma');
INSERT INTO fragrance_note (note)
SELECT 'Földes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Földes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
-- Abu Dhabi parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Abu Dhabi', 'UNISEX', 32000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Sáfrány', 'Agarfa', 'Bulgár Rózsa', 'Tonkabab', 'Fehér Pézsma', 'Földes jegyek', 'Vanília', 'Ámbra')
WHERE p.name = 'Abu Dhabi';


-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Gyümölcsös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyümölcsös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Citrusos jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Citrusos jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Virágos jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Virágos jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Édes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Édes jegyek');
-- Aishah parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Aishah', 'NŐI', 25000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Gyümölcsös jegyek', 'Citrusos jegyek', 'Virágos jegyek', 'Vanília', 'Édes jegyek')
WHERE p.name = 'Aishah';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Jázmin tea' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin tea');
INSERT INTO fragrance_note (note)
SELECT 'Narancs' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Narancs');
INSERT INTO fragrance_note (note)
SELECT 'Cédrusfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Cédrusfa');
INSERT INTO fragrance_note (note)
SELECT 'Mohás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Mohás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Sáfrány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Sáfrány');
INSERT INTO fragrance_note (note)
SELECT 'Méz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Méz');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Pézsmás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsmás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Karamell' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Karamell');
-- Amber & Woods parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Amber & Woods', 'UNISEX', 32000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Jázmin tea', 'Narancs', 'Cédrusfa', 'Mohás jegyek', 'Sáfrány', 'Méz', 'Ámbra', 'Vanília', 'Pézsmás jegyek', 'Karamell')
WHERE p.name = 'Amber & Woods';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Bergamott' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bergamott');
INSERT INTO fragrance_note (note)
SELECT 'Kardamom' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kardamom');
INSERT INTO fragrance_note (note)
SELECT 'Írisz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Írisz');
INSERT INTO fragrance_note (note)
SELECT 'Földi szeder' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Földi szeder');
INSERT INTO fragrance_note (note)
SELECT 'Sáfrány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Sáfrány');
INSERT INTO fragrance_note (note)
SELECT 'Körte' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Körte');
INSERT INTO fragrance_note (note)
SELECT 'Fekete ribizli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fekete ribizli');
INSERT INTO fragrance_note (note)
SELECT 'Rózsabors' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsabors');
INSERT INTO fragrance_note (note)
SELECT 'Mohás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Mohás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Praliné' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Praliné');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
INSERT INTO fragrance_note (note)
SELECT 'Pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsma');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Szantálfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szantálfa');
INSERT INTO fragrance_note (note)
SELECT 'Agarfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Agarfa');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
-- Aura parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Aura', 'UNISEX', 34000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Bergamott', 'Kardamom', 'Írisz', 'Földi szeder', 'Sáfrány', 'Körte', 
    'Fekete ribizli', 'Rózsabors', 'Mohás jegyek', 'Praliné', 'Jázmin', 'Pézsma', 'Vanília', 'Szantálfa', 
    'Agarfa', 'Rózsa', 'Ámbra')
WHERE p.name = 'Aura';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Írisz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Írisz');
INSERT INTO fragrance_note (note)
SELECT 'Narancs' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Narancs');
INSERT INTO fragrance_note (note)
SELECT 'Alma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Alma');
INSERT INTO fragrance_note (note)
SELECT 'Kakaó' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kakaó');
INSERT INTO fragrance_note (note)
SELECT 'Tonkabab' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tonkabab');
INSERT INTO fragrance_note (note)
SELECT 'Karamell' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Karamell');
INSERT INTO fragrance_note (note)
SELECT 'Szantálfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szantálfa');
INSERT INTO fragrance_note (note)
SELECT 'Májvacukor' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Májvacukor');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsma');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
INSERT INTO fragrance_note (note)
SELECT 'Fás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fás jegyek');
-- Candy parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Candy', 'NŐI', 31000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Írisz', 'Narancs', 'Alma', 'Kakaó', 'Tonkabab', 'Karamell', 
    'Szantálfa', 'Májvacukor', 'Vanília', 'Ámbra', 'Pézsma', 'Jázmin', 'Fás jegyek')
WHERE p.name = 'Candy';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Kókusz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kókusz');
INSERT INTO fragrance_note (note)
SELECT 'Gyümölcsös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyümölcsös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Gyöngyvirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyöngyvirág');
INSERT INTO fragrance_note (note)
SELECT 'Púderes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Púderes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Fehér pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fehér pézsma');
INSERT INTO fragrance_note (note)
SELECT 'Kerti vaníliavirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kerti vaníliavirág');
-- Coco Loco parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Coco Loco', 'NŐI', 26000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Kókusz', 'Gyümölcsös jegyek', 'Gyöngyvirág', 'Púderes jegyek', 'Jázmin', 
    'Vanília', 'Fehér pézsma', 'Kerti vaníliavirág')
WHERE p.name = 'Coco Loco';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Pacsuli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pacsuli');
INSERT INTO fragrance_note (note)
SELECT 'Gyöngyvirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyöngyvirág');
INSERT INTO fragrance_note (note)
SELECT 'Körte' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Körte');
INSERT INTO fragrance_note (note)
SELECT 'Barack' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Barack');
INSERT INTO fragrance_note (note)
SELECT 'Alma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Alma');
INSERT INTO fragrance_note (note)
SELECT 'Banán' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Banán');
INSERT INTO fragrance_note (note)
SELECT 'Borsos jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Borsos jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Fahéj' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fahéj');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Karamell' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Karamell');
INSERT INTO fragrance_note (note)
SELECT 'Fás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
INSERT INTO fragrance_note (note)
SELECT 'Gyöngyvirág-gyökér' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyöngyvirág-gyökér');
-- Colors parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Colors', 'NŐI', 28000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Pacsuli', 'Gyöngyvirág', 'Körte', 'Barack', 'Alma', 'Banán', 
    'Borsos jegyek', 'Fahéj', 'Vanília', 'Karamell', 'Fás jegyek', 'Jázmin', 'Gyöngyvirág-gyökér')
WHERE p.name = 'Colors';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Bergamott' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bergamott');
INSERT INTO fragrance_note (note)
SELECT 'Tengeri jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tengeri jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Rózsabors' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsabors');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Írisz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Írisz');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Pézsmás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsmás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Gyöngyvirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyöngyvirág');
INSERT INTO fragrance_note (note)
SELECT 'Mohás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Mohás jegyek');
-- Endless Love parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Endless Love', 'NŐI', 31000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Bergamott', 'Tengeri jegyek', 'Rózsabors', 'Rózsa', 'Ámbra', 
    'Írisz', 'Jázmin', 'Vanília', 'Pézsmás jegyek', 'Gyöngyvirág', 'Mohás jegyek')
WHERE p.name = 'Endless Love';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Írisz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Írisz');
INSERT INTO fragrance_note (note)
SELECT 'Csokoládé' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Csokoládé');
INSERT INTO fragrance_note (note)
SELECT 'Fahéj' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fahéj');
INSERT INTO fragrance_note (note)
SELECT 'Ibolya' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ibolya');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Gyógynövényes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyógynövényes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Szantálfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szantálfa');
INSERT INTO fragrance_note (note)
SELECT 'Rózsabors' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsabors');
INSERT INTO fragrance_note (note)
SELECT 'Zöld jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Zöld jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Pacsuli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pacsuli');
-- Feel parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Feel', 'UNISEX', 28000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Írisz', 'Csokoládé', 'Fahéj', 'Ibolya', 'Jázmin', 
    'Vanília', 'Gyógynövényes jegyek', 'Szantálfa', 'Rózsabors', 'Zöld jegyek', 'Pacsuli')
WHERE p.name = 'Feel';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Citrom' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Citrom');
INSERT INTO fragrance_note (note)
SELECT 'Grapefruit' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Grapefruit');
INSERT INTO fragrance_note (note)
SELECT 'Vetiver' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vetiver');
INSERT INTO fragrance_note (note)
SELECT 'Champagne' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Champagne');
INSERT INTO fragrance_note (note)
SELECT 'Narancsvirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Narancsvirág');
INSERT INTO fragrance_note (note)
SELECT 'Bogyós gyümölcsök' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bogyós gyümölcsök');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
INSERT INTO fragrance_note (note)
SELECT 'Benzoinviasz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Benzoinviasz');
INSERT INTO fragrance_note (note)
SELECT 'Tömjén' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tömjén');
INSERT INTO fragrance_note (note)
SELECT 'Pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsma');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
-- Flamingo Fizz parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Flamingo Fizz', 'NŐI', 32000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Citrom', 'Grapefruit', 'Vetiver', 'Champagne', 
    'Narancsvirág', 'Bogyós gyümölcsök', 'Rózsa', 'Jázmin', 'Benzoinviasz', 
    'Tömjén', 'Pézsma', 'Ámbra')
WHERE p.name = 'Flamingo Fizz';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Fahéj' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fahéj');
INSERT INTO fragrance_note (note)
SELECT 'Bergamott' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bergamott');
INSERT INTO fragrance_note (note)
SELECT 'Aromás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Aromás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Balzsamos jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Balzsamos jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Fás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Púderes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Púderes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Füstös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Füstös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Pézsmás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsmás jegyek');
-- Gold Dust parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Gold Dust', 'FÉRFI', 28000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Fahéj', 'Bergamott', 'Aromás jegyek', 'Balzsamos jegyek', 
    'Fás jegyek', 'Ámbra', 'Vanília', 'Púderes jegyek', 'Füstös jegyek', 'Pézsmás jegyek')
WHERE p.name = 'Gold Dust';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Fehér Virágok' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fehér Virágok');
INSERT INTO fragrance_note (note)
SELECT 'Mandula' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Mandula');
INSERT INTO fragrance_note (note)
SELECT 'Bulgár Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bulgár Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Meleg fűszerek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Meleg fűszerek');
INSERT INTO fragrance_note (note)
SELECT 'Kakaó' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kakaó');
INSERT INTO fragrance_note (note)
SELECT 'Tubarózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tubarózsa');
INSERT INTO fragrance_note (note)
SELECT 'Púderes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Púderes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Édes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Édes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Fás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Pacsuli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pacsuli');
-- Hello Baby parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Hello Baby', 'NŐI', 28000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Fehér Virágok', 'Mandula', 'Bulgár Rózsa', 'Meleg fűszerek', 
    'Kakaó', 'Tubarózsa', 'Púderes jegyek', 'Édes jegyek', 'Ámbra', 'Fás jegyek', 'Pacsuli')
WHERE p.name = 'Hello Baby';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Tangerine' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tangerine');
INSERT INTO fragrance_note (note)
SELECT 'Sáfrány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Sáfrány');
INSERT INTO fragrance_note (note)
SELECT 'Olasz szalmagyopár' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Olasz szalmagyopár');
INSERT INTO fragrance_note (note)
SELECT 'Szerecsendió' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szerecsendió');
INSERT INTO fragrance_note (note)
SELECT 'Gyöngyvirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyöngyvirág');
INSERT INTO fragrance_note (note)
SELECT 'Pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsma');
INSERT INTO fragrance_note (note)
SELECT 'Minerális jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Minerális jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Mohás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Mohás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
-- Immortalis parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Immortalis', 'UNISEX', 36000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Tangerine', 'Sáfrány', 'Olasz szalmagyopár', 'Szerecsendió', 
    'Gyöngyvirág', 'Pézsma', 'Minerális jegyek', 'Mohás jegyek', 'Ámbra')
WHERE p.name = 'Immortalis';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Púderes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Púderes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Fás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Bőrös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bőrös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Meleg fűszerek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Meleg fűszerek');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Agarfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Agarfa');
INSERT INTO fragrance_note (note)
SELECT 'Tibeti pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tibeti pézsma');
INSERT INTO fragrance_note (note)
SELECT 'Tömjén' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tömjén');
-- Khalifa parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Khalifa', 'FÉRFI', 34000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Púderes jegyek', 'Fás jegyek', 'Bőrös jegyek', 'Meleg fűszerek', 
    'Ámbra', 'Agarfa', 'Tibeti pézsma', 'Tömjén')
WHERE p.name = 'Khalifa';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Vérnarancs' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vérnarancs');
INSERT INTO fragrance_note (note)
SELECT 'Fahéj' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fahéj');
INSERT INTO fragrance_note (note)
SELECT 'Feketebors' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Feketebors');
INSERT INTO fragrance_note (note)
SELECT 'Fűszerek keveréke' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fűszerek keveréke');
INSERT INTO fragrance_note (note)
SELECT 'Levendula' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Levendula');
INSERT INTO fragrance_note (note)
SELECT 'Keserűnarancs' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Keserűnarancs');
INSERT INTO fragrance_note (note)
SELECT 'Kasmírfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kasmírfa');
INSERT INTO fragrance_note (note)
SELECT 'Tonkabab' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tonkabab');
INSERT INTO fragrance_note (note)
SELECT 'Vaníliabab' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vaníliabab');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Mohás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Mohás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Vetiver' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vetiver');
-- Khamzat-Smesh parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Khamzat-Smesh', 'UNISEX', 44000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Vérnarancs', 'Fahéj', 'Feketebors', 'Fűszerek keveréke', 
    'Levendula', 'Keserűnarancs', 'Kasmírfa', 'Tonkabab', 'Vaníliabab', 'Ámbra', 
    'Mohás jegyek', 'Vetiver')
WHERE p.name = 'Khamzat-Smesh';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Sáfrány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Sáfrány');
INSERT INTO fragrance_note (note)
SELECT 'Ibolya' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ibolya');
INSERT INTO fragrance_note (note)
SELECT 'Alma és Málna' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Alma és Málna');
INSERT INTO fragrance_note (note)
SELECT 'Fás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Kardamom' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kardamom');
INSERT INTO fragrance_note (note)
SELECT 'Fahéj' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fahéj');
INSERT INTO fragrance_note (note)
SELECT 'Fehér virágok' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fehér virágok');
INSERT INTO fragrance_note (note)
SELECT 'Gyöngyvirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyöngyvirág');
INSERT INTO fragrance_note (note)
SELECT 'Bőrös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bőrös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsma');
-- Khamzat-The Wolf parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Khamzat-The Wolf', 'UNISEX', 44000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Sáfrány', 'Ibolya', 'Alma és Málna', 'Fás jegyek', 
    'Kardamom', 'Fahéj', 'Fehér virágok', 'Gyöngyvirág', 'Bőrös jegyek', 
    'Ámbra', 'Pézsma')
WHERE p.name = 'Khamzat-The Wolf';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Borókabogyó' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Borókabogyó');
INSERT INTO fragrance_note (note)
SELECT 'Grapefruit' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Grapefruit');
INSERT INTO fragrance_note (note)
SELECT 'Citrom' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Citrom');
INSERT INTO fragrance_note (note)
SELECT 'Körte' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Körte');
INSERT INTO fragrance_note (note)
SELECT 'Illatozó muskátli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Illatozó muskátli');
INSERT INTO fragrance_note (note)
SELECT 'Gyöngyvirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyöngyvirág');
INSERT INTO fragrance_note (note)
SELECT 'Feketeribizli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Feketeribizli');
INSERT INTO fragrance_note (note)
SELECT 'Szerecsendió' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szerecsendió');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Cédrusfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Cédrusfa');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Pézsmás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsmás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Mohás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Mohás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Gyömbér' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyömbér');
INSERT INTO fragrance_note (note)
SELECT 'Rózsabors' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsabors');
INSERT INTO fragrance_note (note)
SELECT 'Benzoinviasz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Benzoinviasz');
INSERT INTO fragrance_note (note)
SELECT 'Vetiver' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vetiver');
-- La Bohéme parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('La Bohéme', 'FÉRFI', 29000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Borókabogyó', 'Grapefruit', 'Citrom', 'Körte', 
    'Illatozó muskátli', 'Gyöngyvirág', 'Feketeribizli', 'Szerecsendió', 'Rózsa', 
    'Cédrusfa', 'Ámbra', 'Pézsmás jegyek', 'Mohás jegyek', 'Gyömbér', 'Rózsabors', 
    'Benzoinviasz', 'Vetiver')
WHERE p.name = 'La Bohéme';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Grapefruit' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Grapefruit');
INSERT INTO fragrance_note (note)
SELECT 'Sáfrány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Sáfrány');
INSERT INTO fragrance_note (note)
SELECT 'Palka' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Palka');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Mohás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Mohás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Vetiver' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vetiver');
-- Lake Balaton parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Lake Balaton', 'UNISEX', 32000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Grapefruit', 'Sáfrány', 'Palka', 'Jázmin', 
    'Ámbra', 'Mohás jegyek', 'Vetiver')
WHERE p.name = 'Lake Balaton';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Piros bogyós gyümölcsök' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Piros bogyós gyümölcsök');
INSERT INTO fragrance_note (note)
SELECT 'Karamell' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Karamell');
INSERT INTO fragrance_note (note)
SELECT 'Kókusz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kókusz');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Csokoládé' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Csokoládé');
INSERT INTO fragrance_note (note)
SELECT 'Ibolya' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ibolya');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Pézsmás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsmás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
-- Queen of Chambord parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Queen of Chambord', 'NŐI', 32000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Piros bogyós gyümölcsök', 'Karamell', 'Kókusz', 'Vanília', 
    'Csokoládé', 'Ibolya', 'Ámbra', 'Pézsmás jegyek', 'Jázmin')
WHERE p.name = 'Queen of Chambord';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Karamell' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Karamell');
INSERT INTO fragrance_note (note)
SELECT 'Konyak' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Konyak');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Írisz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Írisz');
INSERT INTO fragrance_note (note)
SELECT 'Narancs' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Narancs');
INSERT INTO fragrance_note (note)
SELECT 'Kasmírfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kasmírfa');
INSERT INTO fragrance_note (note)
SELECT 'Méz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Méz');
INSERT INTO fragrance_note (note)
SELECT 'Csokoládé' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Csokoládé');
INSERT INTO fragrance_note (note)
SELECT 'Tonkabab' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tonkabab');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
-- Memories parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Memories', 'UNISEX', 30000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Karamell', 'Konyak', 'Vanília', 'Írisz', 'Narancs', 
    'Kasmírfa', 'Méz', 'Csokoládé', 'Tonkabab', 'Ámbra')
WHERE p.name = 'Memories';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Méz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Méz');
INSERT INTO fragrance_note (note)
SELECT 'Karamell' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Karamell');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Tej' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tej');
INSERT INTO fragrance_note (note)
SELECT 'Írisz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Írisz');
INSERT INTO fragrance_note (note)
SELECT 'Balzsamos Szuhar' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Balzsamos Szuhar');
INSERT INTO fragrance_note (note)
SELECT 'Cédrusfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Cédrusfa');
INSERT INTO fragrance_note (note)
SELECT 'Tonkabab' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tonkabab');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsma');
-- Memories Gold parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Memories Gold', 'UNISEX', 42000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Méz', 'Karamell', 'Vanília', 'Tej', 'Írisz', 
    'Balzsamos Szuhar', 'Cédrusfa', 'Tonkabab', 'Ámbra', 'Pézsma')
WHERE p.name = 'Memories Gold';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Aromás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Aromás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Bergamott és Mandarin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bergamott és Mandarin');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Levendula' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Levendula');
INSERT INTO fragrance_note (note)
SELECT 'Kerti vaníliavirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kerti vaníliavirág');
INSERT INTO fragrance_note (note)
SELECT 'Frézia' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Frézia');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Szantálfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szantálfa');
INSERT INTO fragrance_note (note)
SELECT 'Pézsmás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsmás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Tonkabab' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tonkabab');
-- Morocco parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Morocco', 'FÉRFI', 29000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Aromás jegyek', 'Bergamott és Mandarin', 'Vanília', 'Levendula', 
    'Kerti vaníliavirág', 'Frézia', 'Ámbra', 'Szantálfa', 'Pézsmás jegyek', 'Tonkabab')
WHERE p.name = 'Morocco';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Sáfrány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Sáfrány');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Feketeribizli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Feketeribizli');
INSERT INTO fragrance_note (note)
SELECT 'Kardamom' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kardamom');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Írisz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Írisz');
INSERT INTO fragrance_note (note)
SELECT 'Édes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Édes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Tonkabab' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tonkabab');
INSERT INTO fragrance_note (note)
SELECT 'Szantálfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szantálfa');
INSERT INTO fragrance_note (note)
SELECT 'Pézsmás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsmás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Bőrös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bőrös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Krémes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Krémes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Fahéj' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fahéj');
-- Mystery Saffron parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Mystery Saffron', 'UNISEX', 35000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Sáfrány', 'Rózsa', 'Feketeribizli', 'Kardamom', 'Vanília', 
    'Írisz', 'Édes jegyek', 'Tonkabab', 'Szantálfa', 'Pézsmás jegyek', 'Bőrös jegyek', 
    'Krémes jegyek', 'Fahéj')
WHERE p.name = 'Mystery Saffron';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Gyöngyvirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyöngyvirág');
INSERT INTO fragrance_note (note)
SELECT 'Egzotikus virágok' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Egzotikus virágok');
INSERT INTO fragrance_note (note)
SELECT 'Szegfű' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szegfű');
INSERT INTO fragrance_note (note)
SELECT 'Fűszerek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fűszerek');
INSERT INTO fragrance_note (note)
SELECT 'Karamell' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Karamell');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Pézsmás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsmás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Bőrös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bőrös jegyek');
-- Noble parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Noble', 'UNISEX', 44000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Gyöngyvirág', 'Egzotikus virágok', 'Szegfű', 'Fűszerek', 
    'Karamell', 'Rózsa', 'Ámbra', 'Pézsmás jegyek', 'Vanília', 'Bőrös jegyek')
WHERE p.name = 'Noble';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Tölgymoha' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tölgymoha');
INSERT INTO fragrance_note (note)
SELECT 'Fás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Bőrös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bőrös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Édes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Édes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Aromás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Aromás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Paradicsomlevél' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Paradicsomlevél');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Pézsmás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsmás jegyek');
-- Oud Alfateh parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Oud Alfateh', 'UNISEX', 64000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Tölgymoha', 'Fás jegyek', 'Bőrös jegyek', 'Édes jegyek', 
    'Aromás jegyek', 'Jázmin', 'Rózsa', 'Paradicsomlevél', 'Ámbra', 'Pézsmás jegyek')
WHERE p.name = 'Oud Alfateh';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Gyümölcsös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyümölcsös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Karamell' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Karamell');
INSERT INTO fragrance_note (note)
SELECT 'Könnyű fűszerek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Könnyű fűszerek');
INSERT INTO fragrance_note (note)
SELECT 'Púderes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Púderes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Édes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Édes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
-- Passion parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Passion', 'NŐI', 30000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Gyümölcsös jegyek', 'Karamell', 'Könnyű fűszerek', 
    'Púderes jegyek', 'Édes jegyek', 'Vanília')
WHERE p.name = 'Passion';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Cédrusfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Cédrusfa');
INSERT INTO fragrance_note (note)
SELECT 'Írisz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Írisz');
INSERT INTO fragrance_note (note)
SELECT 'Bőrös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bőrös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Feketebors' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Feketebors');
INSERT INTO fragrance_note (note)
SELECT 'Kakaó' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kakaó');
INSERT INTO fragrance_note (note)
SELECT 'Fahéj' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fahéj');
INSERT INTO fragrance_note (note)
SELECT 'Kasmírfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kasmírfa');
INSERT INTO fragrance_note (note)
SELECT 'Kanárifagyanta' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kanárifagyanta');
INSERT INTO fragrance_note (note)
SELECT 'Szantálfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szantálfa');
INSERT INTO fragrance_note (note)
SELECT 'Pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsma');
-- Phoenix parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Phoenix', 'FÉRFI', 34000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Cédrusfa', 'Írisz', 'Bőrös jegyek', 'Feketebors', 
    'Kakaó', 'Fahéj', 'Kasmírfa', 'Kanárifagyanta', 'Szantálfa', 'Pézsma')
WHERE p.name = 'Phoenix';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Könnyű fűszerek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Könnyű fűszerek');
INSERT INTO fragrance_note (note)
SELECT 'Virágos jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Virágos jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Írisz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Írisz');
INSERT INTO fragrance_note (note)
SELECT 'Rózsabors' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsabors');
INSERT INTO fragrance_note (note)
SELECT 'Púderes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Púderes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Pézsmás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsmás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Bőrös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bőrös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Animalikus jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Animalikus jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
-- Purple Bronze parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Purple Bronze', 'UNISEX', 28000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Könnyű fűszerek', 'Virágos jegyek', 'Írisz', 'Rózsabors', 
    'Púderes jegyek', 'Rózsa', 'Pézsmás jegyek', 'Bőrös jegyek', 'Animalikus jegyek', 'Vanília', 'Ámbra')
WHERE p.name = 'Purple Bronze';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Szerecsendió' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szerecsendió');
INSERT INTO fragrance_note (note)
SELECT 'Sáfrány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Sáfrány');
INSERT INTO fragrance_note (note)
SELECT 'Levendula' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Levendula');
INSERT INTO fragrance_note (note)
SELECT 'Gyógynövényes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyógynövényes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Agarfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Agarfa');
INSERT INTO fragrance_note (note)
SELECT 'Balzsamos Szuhar' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Balzsamos Szuhar');
INSERT INTO fragrance_note (note)
SELECT 'Szegfűszeg' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szegfűszeg');
INSERT INTO fragrance_note (note)
SELECT 'Édes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Édes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Pacsuli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pacsuli');
INSERT INTO fragrance_note (note)
SELECT 'Vetiver' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vetiver');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
-- Royal Oud parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Royal Oud', 'FÉRFI', 40000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Szerecsendió', 'Sáfrány', 'Levendula', 'Gyógynövényes jegyek', 
    'Agarfa', 'Balzsamos Szuhar', 'Szegfűszeg', 'Édes jegyek', 'Ámbra', 'Pacsuli', 'Vetiver', 
    'Vanília', 'Jázmin')
WHERE p.name = 'Royal Oud';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Írisz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Írisz');
INSERT INTO fragrance_note (note)
SELECT 'Ibolya' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ibolya');
INSERT INTO fragrance_note (note)
SELECT 'Púderes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Púderes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ylang-Ylang' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ylang-Ylang');
INSERT INTO fragrance_note (note)
SELECT 'Pacsuli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pacsuli');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsma');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Karamell' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Karamell');
-- Secret Desire Iris parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Secret Desire Iris', 'UNISEX', 36000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Rózsa', 'Írisz', 'Ibolya', 'Púderes jegyek', 'Ylang-Ylang', 
    'Pacsuli', 'Vanília', 'Pézsma', 'Ámbra', 'Karamell')
WHERE p.name = 'Secret Desire Iris';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Mangó' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Mangó');
INSERT INTO fragrance_note (note)
SELECT 'Bergamott' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bergamott');
INSERT INTO fragrance_note (note)
SELECT 'Feketeribizli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Feketeribizli');
INSERT INTO fragrance_note (note)
SELECT 'Narancsvirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Narancsvirág');
INSERT INTO fragrance_note (note)
SELECT 'Tömjén' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tömjén');
INSERT INTO fragrance_note (note)
SELECT 'Gyöngyvirág' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Gyöngyvirág');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Szantálfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szantálfa');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
-- Siren parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Siren', 'NŐI', 30000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Mangó', 'Bergamott', 'Feketeribizli', 'Narancsvirág', 'Tömjén', 
    'Gyöngyvirág', 'Jázmin', 'Vanília', 'Szantálfa', 'Ámbra')
WHERE p.name = 'Siren';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Kókusz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kókusz');
INSERT INTO fragrance_note (note)
SELECT 'Mimóza' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Mimóza');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
INSERT INTO fragrance_note (note)
SELECT 'Pacsuli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pacsuli');
INSERT INTO fragrance_note (note)
SELECT 'Fahéj' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fahéj');
INSERT INTO fragrance_note (note)
SELECT 'Kardamom' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kardamom');
INSERT INTO fragrance_note (note)
SELECT 'Szerecsendió' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szerecsendió');
INSERT INTO fragrance_note (note)
SELECT 'Dohány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Dohány');
INSERT INTO fragrance_note (note)
SELECT 'Kanárifa-gyanta' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kanárifa-gyanta');
INSERT INTO fragrance_note (note)
SELECT 'Sáfrány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Sáfrány');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Tonkabab' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tonkabab');
INSERT INTO fragrance_note (note)
SELECT 'Agarfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Agarfa');
INSERT INTO fragrance_note (note)
SELECT 'Szantálfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szantálfa');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsma');
-- Soho parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Soho', 'UNISEX', 34000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Kókusz', 'Mimóza', 'Jázmin', 'Pacsuli', 'Fahéj', 
    'Kardamom', 'Szerecsendió', 'Dohány', 'Kanárifa-gyanta', 'Sáfrány', 'Vanília', 
    'Tonkabab', 'Agarfa', 'Szantálfa', 'Ámbra', 'Pézsma')
WHERE p.name = 'Soho';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Tiramisu' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tiramisu');
INSERT INTO fragrance_note (note)
SELECT 'Karamell' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Karamell');
INSERT INTO fragrance_note (note)
SELECT 'Méz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Méz');
INSERT INTO fragrance_note (note)
SELECT 'Bergamott' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bergamott');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Mohás' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Mohás');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
-- Parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('SUPERZ. x BACKOFF by Tóth Andi - Toxic', 'UNISEX', 32000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Tiramisu', 'Karamell', 'Méz', 'Bergamott', 'Ámbra', 
    'Mohás', 'Vanília')
WHERE p.name = 'SUPERZ. x BACKOFF by Tóth Andi - Toxic';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Zöld jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Zöld jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Mohás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Mohás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Fenyő' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fenyő');
INSERT INTO fragrance_note (note)
SELECT 'Kamilla' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kamilla');
INSERT INTO fragrance_note (note)
SELECT 'Levendula' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Levendula');
INSERT INTO fragrance_note (note)
SELECT 'Aquatikus jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Aquatikus jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pézsma');
INSERT INTO fragrance_note (note)
SELECT 'Földes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Földes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
-- Parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('SUPERZ. X Fradi - 1899', 'UNISEX', 34000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Zöld jegyek', 'Mohás jegyek', 'Fenyő', 'Kamilla', 
    'Levendula', 'Aquatikus jegyek', 'Pézsma', 'Földes jegyek', 'Rózsa', 'Ámbra')
WHERE p.name = 'SUPERZ. X Fradi - 1899';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Dohány' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Dohány');
INSERT INTO fragrance_note (note)
SELECT 'Indiai kender' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Indiai kender');
INSERT INTO fragrance_note (note)
SELECT 'Aromás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Aromás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Zöld jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Zöld jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Kávé' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Kávé');
INSERT INTO fragrance_note (note)
SELECT 'Édes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Édes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Balzsamos jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Balzsamos jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Füstös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Füstös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Agarfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Agarfa');
INSERT INTO fragrance_note (note)
SELECT 'Fás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fás jegyek');
-- Parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Sweet Darkness', 'UNISEX', 36000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Dohány', 'Indiai kender', 'Aromás jegyek', 'Zöld jegyek', 
    'Kávé', 'Édes jegyek', 'Balzsamos jegyek', 'Ámbra', 'Füstös jegyek', 'Agarfa', 'Fás jegyek')
WHERE p.name = 'Sweet Darkness';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Citrusok' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Citrusok');
INSERT INTO fragrance_note (note)
SELECT 'Fehér virágos jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fehér virágos jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Édes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Édes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Meleg fűszeres jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Meleg fűszeres jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Aromás jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Aromás jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Friss fűszeres jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Friss fűszeres jegyek');
-- Parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Tenerife', 'FÉRFI', 25000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Citrusok', 'Fehér virágos jegyek', 'Édes jegyek', 'Meleg fűszeres jegyek', 
    'Ámbra', 'Aromás jegyek', 'Vanília', 'Friss fűszeres jegyek')
WHERE p.name = 'Tenerife';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Ibolya' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ibolya');
INSERT INTO fragrance_note (note)
SELECT 'Bergamott' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bergamott');
INSERT INTO fragrance_note (note)
SELECT 'Rozmaring' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Rozmaring');
INSERT INTO fragrance_note (note)
SELECT 'Balzsamos Szuhar' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Balzsamos Szuhar');
INSERT INTO fragrance_note (note)
SELECT 'Írisz' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Írisz');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Agarfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Agarfa');
INSERT INTO fragrance_note (note)
SELECT 'Bőrös jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Bőrös jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Cédrusfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Cédrusfa');
INSERT INTO fragrance_note (note)
SELECT 'Szantálfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szantálfa');
INSERT INTO fragrance_note (note)
SELECT 'Pacsuli' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Pacsuli');
-- Parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Valhalla', 'FÉRFI', 36000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN ('Ibolya', 'Bergamott', 'Rozmaring', 'Balzsamos Szuhar', 'Írisz', 'Ámbra', 
    'Vanília', 'Agarfa', 'Bőrös jegyek', 'Cédrusfa', 'Szantálfa', 'Pacsuli')
WHERE p.name = 'Valhalla';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Szicíliai citrusok' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szicíliai citrusok');
INSERT INTO fragrance_note (note)
SELECT 'Narancs' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Narancs');
INSERT INTO fragrance_note (note)
SELECT 'Barack' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Barack');
INSERT INTO fragrance_note (note)
SELECT 'Alma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Alma');
INSERT INTO fragrance_note (note)
SELECT 'Sárgadinnye' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Sárgadinnye');
INSERT INTO fragrance_note (note)
SELECT 'Púderes jegyek' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Púderes jegyek');
INSERT INTO fragrance_note (note)
SELECT 'Ámbra' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Ámbra');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Fehér pézsma' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Fehér pézsma');
-- Parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Whoosh', 'UNISEX', 32000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN (
    'Szicíliai citrusok', 'Narancs', 'Barack', 'Alma', 'Sárgadinnye', 
    'Púderes jegyek', 'Ámbra', 'Vanília', 'Fehér pézsma'
)
WHERE p.name = 'Whoosh';



-- Illatjegyek hozzáadása, ha még nem léteznek
INSERT INTO fragrance_note (note)
SELECT 'Cseresznyeszirup' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Cseresznyeszirup');
INSERT INTO fragrance_note (note)
SELECT 'Keserűmandula' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Keserűmandula');
INSERT INTO fragrance_note (note)
SELECT 'Meggy' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Meggy');
INSERT INTO fragrance_note (note)
SELECT 'Jázmin' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Jázmin');
INSERT INTO fragrance_note (note)
SELECT 'Török rózsa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Török rózsa');
INSERT INTO fragrance_note (note)
SELECT 'Szantálfa' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Szantálfa');
INSERT INTO fragrance_note (note)
SELECT 'Vanília' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vanília');
INSERT INTO fragrance_note (note)
SELECT 'Vetiver' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Vetiver');
INSERT INTO fragrance_note (note)
SELECT 'Tonkabab' WHERE NOT EXISTS (SELECT 1 FROM fragrance_note WHERE note = 'Tonkabab');
-- Parfüm hozzáadása
INSERT INTO parfum (name, gender, price) 
VALUES ('Wild Cherry', 'UNISEX', 28000);
-- Parfüm és illatjegyek kapcsolása
INSERT INTO parfum_fragrance_note (parfum_id, fragrance_note_id)
SELECT p.id, f.id
FROM parfum p
JOIN fragrance_note f ON f.note IN (
    'Cseresznyeszirup', 'Keserűmandula', 'Meggy', 'Jázmin', 'Török rózsa', 
    'Szantálfa', 'Vanília', 'Vetiver', 'Tonkabab'
)
WHERE p.name = 'Wild Cherry';
