-- Taula per a la carta
CREATE TABLE carta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    preu DECIMAL(10,2),
    categoria VARCHAR(255)
);

-- Taula per a les reserves
CREATE TABLE reserves (
    id INT AUTO_INCREMENT PRIMARY KEY,
    quantitat_persones INT,
    data DATE,
    hora TIME,
    nom_client VARCHAR(255),
    telefon_client VARCHAR(20),
    mesa_id INT,
    assistencia BOOLEAN DEFAULT FALSE, -- Camp per indicar si el client ha assistit a la reserva
    FOREIGN KEY (mesa_id) REFERENCES taules(id)
);

-- Taula per a l'inventari
CREATE TABLE inventari (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    estoc INT,
    categoria VARCHAR(255)
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

-- Taula per al personal
CREATE TABLE personal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dni VARCHAR(20),
    nom VARCHAR(255),
    cognom VARCHAR(255),
    email VARCHAR(255),
    telefon VARCHAR(20),
    adreca VARCHAR(255),
    càrrec VARCHAR(50) -- Pot ser repartidor, cambrer, gerent, cuiner o neteja
);

-- Taula per als clients
CREATE TABLE clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255),
    telefon VARCHAR(20),
    adreca VARCHAR(255)
);

-- Taula per a la llista negra (Blacklist)
CREATE TABLE llista_negra (
    id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT,
    motiu VARCHAR(255),
    FOREIGN KEY (client_id) REFERENCES clients(id)
);

-- Taula per a les taules
CREATE TABLE taules (
    id INT AUTO_INCREMENT PRIMARY KEY,
    capacitat INT
);

-- Taula per als pedidos a domicili
CREATE TABLE comandes_domicili (
    id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT,
    adreca_entrega VARCHAR(255),
    temps_estimat TIME,
    valoracio_client INT, -- De l'1 al 10
    data_entrega TIMESTAMP,
    FOREIGN KEY (client_id) REFERENCES clients(id)
);
