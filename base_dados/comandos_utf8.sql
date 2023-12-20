LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/grupo.csv'
INTO TABLE grupo
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(Grupo_numero, Nome);

delete from grupo where grupo_numero in (1,2,3,4,5,6,7,8,9);

ALTER TABLE grupo
    CONVERT TO CHARACTER SET utf8;
    
    select * from grupo;
    
SHOW VARIABLES LIKE 'secure_file_priv';

SHOW VARIABLES LIKE 'character_set%';
SHOW VARIABLES LIKE 'collation%';