CREATE DATABASE IF NOT EXISTS chiquitobd
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE chiquitobd;

DROP TABLE IF EXISTS horario_aula;
DROP TABLE IF EXISTS aula;

CREATE TABLE aula
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    serie CHAR(2) NOT NULL,
    turma VARCHAR(6) NOT NULL,
    componente VARCHAR(100) NOT NULL,
    professor VARCHAR(100) NOT NULL
);

CREATE TABLE horario_aula
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    idaula INT NOT NULL,
    dia_semana VARCHAR(7) NOT NULL,
    ordem INT NOT NULL,
    FOREIGN KEY (idaula) REFERENCES aula (id)
);

INSERT INTO aula (serie, turma, componente, professor) VALUES
("2º", "DSB", "Programação Back End", "Ronaldo"),
("2º", "DSB", "Banco de Dados", "Patrick"),
("2º", "DSB", "Programação Front End", "Marcos");

INSERT INTO horario_aula (idaula, dia_semana, ordem) VALUES
(1, "segunda", 1),
(1, "segunda", 2),
(2, "terca", 1),
(3, "quarta", 3);

SELECT * FROM aula;
SELECT * FROM horario_aula;
