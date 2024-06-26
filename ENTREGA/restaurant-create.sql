DROP DATABASE IF EXISTS restaurant;
CREATE DATABASE restaurant;
USE restaurant;

-- Taula per als clients
CREATE TABLE clients (
    dni CHAR(9) PRIMARY KEY,
    nom VARCHAR(30),
    telefon VARCHAR(13),
    adreca VARCHAR(255)
);

-- Taula per al personal
CREATE TABLE personal (
    dni CHAR(9) PRIMARY KEY,
    nom VARCHAR(30),
    cognom VARCHAR(30),
    email VARCHAR(150),
    telefon VARCHAR(13),
    adreca VARCHAR(255),
    carrec ENUM('Gerent','Cambrer', 'Neteja', 'Repartidor', 'Cuiner')
    );

-- Taula per a la llista negra (Blacklist)
CREATE TABLE llista_negra (
    client_id CHAR(9) PRIMARY KEY,
    motiu VARCHAR(255),
    FOREIGN KEY (client_id) REFERENCES clients(dni) ON DELETE NO ACTION ON UPDATE CASCADE
);

-- Taula per als tiquets
CREATE TABLE tiquets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    client_id CHAR(9),
    treballador_id CHAR(9),
    preu_total DECIMAL(10,2),
    data_hora TIMESTAMP,
    FOREIGN KEY (client_id) REFERENCES clients(dni) ON DELETE NO ACTION ON UPDATE CASCADE,
    FOREIGN KEY (treballador_id) REFERENCES personal(dni) ON DELETE NO ACTION ON UPDATE CASCADE
);

-- Taula per als horaris de les cartes
CREATE TABLE horari (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_horari VARCHAR(20) UNIQUE,
    hora_inici TIME,
    hora_fi TIME
);

-- Taula per a les categories
CREATE TABLE categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_categoria VARCHAR(30)
);

-- Taula per a l'inventari
CREATE TABLE inventari (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_producte VARCHAR(50),
    estoc INT,
    preu DECIMAL(4,2),
    id_categoria INT,
    imatge longblob,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id) ON DELETE NO ACTION ON UPDATE CASCADE
);

-- Taula per a la carta
CREATE TABLE carta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_carta VARCHAR(40)
);

-- Taula per a relacionar la carta amb l'inventari
CREATE TABLE carta_inventari_rel (
    carta_id INT,
    inventari_id INT,
    PRIMARY KEY (carta_id, inventari_id),
    FOREIGN KEY (carta_id) REFERENCES carta(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    FOREIGN KEY (inventari_id) REFERENCES inventari(id) ON DELETE NO ACTION ON UPDATE CASCADE
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
    client_id CHAR(9),
    taula_id INT,
    assistencia ENUM('0', '1'),
    FOREIGN KEY (client_id) REFERENCES clients(dni) ON DELETE NO ACTION ON UPDATE CASCADE,
    FOREIGN KEY (taula_id) REFERENCES taules(id) ON DELETE NO ACTION ON UPDATE CASCADE
);


-- Taula per a les comandes a domicili
CREATE TABLE comandes_domicili (
    id INT AUTO_INCREMENT PRIMARY KEY,
    adreca_entrega VARCHAR(255),
    temps_estimat TIME,
    valoracio_client ENUM("1","2","3","4","5"),
    data_entrega TIMESTAMP,
    FOREIGN KEY (id) REFERENCES tiquets(id) ON DELETE NO ACTION ON UPDATE CASCADE
);


-- Taula per a relacionar les cartes amb els horaris
CREATE TABLE carta_horari_rel (
    carta_id INT,
    horari_id INT,
    PRIMARY KEY (carta_id, horari_id),
    FOREIGN KEY (carta_id) REFERENCES carta(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    FOREIGN KEY (horari_id) REFERENCES horari(id) ON DELETE NO ACTION ON UPDATE CASCADE
);

CREATE TABLE detall_comandes (
	id_tiquet INT,
	id_producte INT,
	quantitat_demanat INT,
	preu DECIMAL(4,2),
	PRIMARY KEY(id_tiquet, id_producte),
	FOREIGN KEY (id_tiquet) REFERENCES tiquets(id) ON DELETE NO ACTION ON UPDATE CASCADE,
   	FOREIGN KEY (id_producte) REFERENCES inventari(id) ON DELETE NO ACTION ON UPDATE CASCADE
);

-- Funciona