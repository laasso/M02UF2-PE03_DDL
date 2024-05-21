DROP DATABASE IF EXISTS restaurant;
CREATE DATABASE restaurant;
USE restaurant;

-- Taula per als clients
CREATE TABLE clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    telefon VARCHAR(9),
    adreca VARCHAR(255)
);

-- Taula per al personal
CREATE TABLE personal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dni CHAR(9),
    nom VARCHAR(255),
    cognom VARCHAR(255),
    email VARCHAR(255),
    telefon VARCHAR(20),
    adreca VARCHAR(255),
    carrec VARCHAR(50)
);

-- Taula per a la llista negra (Blacklist)
CREATE TABLE llista_negra (
    client_id INT PRIMARY KEY,
    motiu VARCHAR(255),
    FOREIGN KEY (client_id) REFERENCES clients(id)
);

-- Taula per als tiquets
CREATE TABLE tiquets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT,
    treballador_id INT,
    preu_total DECIMAL(10,2),
    data_hora TIMESTAMP,
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (treballador_id) REFERENCES personal(id)
);

-- Taula per als horaris de les cartes
CREATE TABLE carta_horari (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_carta VARCHAR(255),
    hora_inici TIME,
    hora_fi TIME
);

-- Taula per a les categories
CREATE TABLE categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_categoria VARCHAR(255)
);

-- Taula per a l'inventari
CREATE TABLE inventari (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_producte VARCHAR(255),
    estoc INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);

-- Taula per a la carta
CREATE TABLE carta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_producte VARCHAR(255),
    preu DECIMAL(10,2),
    categoria VARCHAR(255),
    inventari_id INT,
    FOREIGN KEY (inventari_id) REFERENCES inventari(id)
);

-- Taula per a relacionar la carta amb l'inventari
CREATE TABLE carta_inventari_rel (
    carta_id INT,
    inventari_id INT,
    PRIMARY KEY (carta_id, inventari_id),
    FOREIGN KEY (carta_id) REFERENCES carta(id),
    FOREIGN KEY (inventari_id) REFERENCES inventari(id)
);


-- Taula per a les taules
CREATE TABLE taules (
    id INT AUTO_INCREMENT PRIMARY KEY,
    capacitat INT
);

-- Taula per a les reserves
CREATE TABLE reserves (
    id INT AUTO_INCREMENT PRIMARY KEY,
    quantitat_persones INT,
    data DATE,
    hora TIME,
    client_id INT,
    mesa_id INT,
    assistencia BOOLEAN DEFAULT FALSE,
    -- carta_id INT,
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (mesa_id) REFERENCES taules(id),
    FOREIGN KEY (carta_id) REFERENCES carta(id)
);


-- Taula per a les comandes a domicili
CREATE TABLE comandes_domicili (
    id INT AUTO_INCREMENT PRIMARY KEY,
    adreca_entrega VARCHAR(255),
    temps_estimat TIME,
    valoracio_client INT,
    data_entrega TIMESTAMP,
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (id) REFERENCES tiquets(id)
);


-- Taula per a relacionar les cartes amb els horaris
CREATE TABLE carta_horari_rel (
    carta_id INT,
    horari_id INT,
    PRIMARY KEY (carta_id, horari_id),
    FOREIGN KEY (carta_id) REFERENCES carta(id),
    FOREIGN KEY (horari_id) REFERENCES carta_horari(id)
);
