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
