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
(id,nom_producte,estoc,preu,id_categoria);

-- Crear la tabla temporal
CREATE TABLE temp_carta (
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

-- Insertar datos en la tabla carta
INSERT INTO carta (id, nom_carta)
SELECT id_carta, nom_carta
FROM temp_carta;
