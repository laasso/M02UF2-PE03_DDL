USE restaurant;

-- Insert Personal
LOAD DATA LOCAL INFILE '/home/lasso/M02UF2-PE03_DDL/DATA/personal.csv'
INTO TABLE personal
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(dni, nom, cognom, email, telefon, adreca, carrec);

-- Insert Taules 
LOAD DATA LOCAL INFILE '/home/lasso/M02UF2-PE03_DDL/DATA/taules.csv'
INTO TABLE taules
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id,capacitat);

-- Insert Clients
LOAD DATA LOCAL INFILE '/home/lasso/M02UF2-PE03_DDL/DATA/clients.csv'
INTO TABLE clients
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(dni,nom,telefon,adreca);

-- Insert Reserves
LOAD DATA LOCAL INFILE '/home/lasso/M02UF2-PE03_DDL/DATA/reserves.csv'
INTO TABLE reserves
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id,quantitat_persones,data,hora,client_id,taula_id,assistencia);

-- Insert Categories
LOAD DATA LOCAL INFILE '/home/lasso/M02UF2-PE03_DDL/DATA/categories.csv'
INTO TABLE categoria
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id,nom_categoria);

-- Insert Inventari
LOAD DATA LOCAL INFILE '/home/lasso/M02UF2-PE03_DDL/DATA/inventari.csv'
INTO TABLE inventari
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id,nom_producte,estoc,id_categoria,preu);

-- Crear la tabla temporal
CREATE TEMPORARY TABLE temp_carta (
    id_carta INT,
    nom_carta VARCHAR(255),
    horari VARCHAR(255)
);

-- Cargar el archivo CSV en la tabla temporal
LOAD DATA LOCAL INFILE '/home/lasso/M02UF2-PE03_DDL/DATA/carta.csv'
INTO TABLE temp_carta
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_carta, nom_carta, horari);

-- Insertar datos en tabla tiquets
LOAD DATA LOCAL INFILE '/home/lasso/M02UF2-PE03_DDL/DATA/tiquets.csv'
INTO TABLE tiquets
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(client_id, treballador_id, preu_total, data_hora);

-- Insertar datos tabla comandes_domicili
LOAD DATA LOCAL INFILE '/home/lasso/M02UF2-PE03_DDL/DATA/domicili.csv'
INTO TABLE comandes_domicili
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(adreca_entrega,temps_estimat,valoracio_client,data_entrega);

-- Insertar datos en la tabla carta
INSERT INTO carta (id, nom_carta)
SELECT id_carta, nom_carta
FROM temp_carta;

-- Insertar datos en tabla horario sin repeticion

CREATE TEMPORARY TABLE horario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) UNIQUE
);

CREATE TEMPORARY TABLE horari2 LIKE horari;

INSERT INTO horario (nombre)
SELECT DISTINCT SUBSTRING_INDEX(SUBSTRING_INDEX(horari, '-', numbers.n), '-', -1) AS nombre
FROM temp_carta
JOIN (SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) numbers
ON CHAR_LENGTH(horari) - CHAR_LENGTH(REPLACE(horari, '-', '')) >= numbers.n - 1;

-- Para ordenar los valores y darles un ID único
INSERT INTO horari2 (nom_horari)
SELECT DISTINCT nombre
FROM horario
ORDER BY nombre;

-- Inserts en horari (hora_inici i hora_fi)

-- Matins
UPDATE horari2
SET hora_inici = '08:00:00', hora_fi = '12:00:00'
WHERE nom_horari = 'matins';

-- Migdia
UPDATE horari2
SET hora_inici = '12:00:00', hora_fi = '16:00:00'
WHERE nom_horari = 'migdia';

-- Nit
UPDATE horari2
SET hora_inici = '20:00:00', hora_fi = '01:00:00'
WHERE nom_horari = 'nit';

-- Borrar els registres amb camps nuls
DELETE FROM horari2
WHERE id IS NULL OR nom_horari IS NULL OR hora_inici IS NULL OR hora_fi IS NULL;

INSERT INTO horari(nom_horari, hora_inici, hora_fi)
SELECT nom_horari, hora_inici, hora_fi
FROM horari2;

DROP TEMPORARY TABLE horario;
DROP TEMPORARY TABLE horari2;
DROP TEMPORARY TABLE temp_carta;

-- Inseret llista negra
INSERT INTO llista_negra (client_id, motiu)
SELECT r.client_id, 'No assistencia a reserva pasada' AS motiu
FROM reserves r
JOIN clients c ON r.client_id = c.dni
WHERE r.data < CURDATE() AND r.assistencia = '0';

-- Insertar datos en tabla tiquets
LOAD DATA LOCAL INFILE '/home/lasso/M02UF2-PE03_DDL/DATA/detall_comandes.csv'
INTO TABLE detall_comandes
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_tiquet, id_producte, quantitat_demanat,preu);

-- Insertar datos en tabla tiquets
LOAD DATA LOCAL INFILE '/home/lasso/M02UF2-PE03_DDL/DATA/inventari_rel.csv'
INTO TABLE carta_inventari_rel
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(carta_id, inventari_id);


-- Insertar datos en tabla tiquets
LOAD DATA LOCAL INFILE '/home/lasso/M02UF2-PE03_DDL/DATA/horari_rel.csv'
INTO TABLE carta_horari_rel
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(carta_id, horari_id);
