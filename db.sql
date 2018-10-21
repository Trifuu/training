CREATE DATABASE IF NOT EXISTS `training`;

USE training;

/*crearea unei tabele*/
CREATE TABLE IF NOT EXISTS `angajati` (

   `id` INT NOT NULL AUTO_INCREMENT , 
   `email` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL , 
   `nume` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL , 
   `prenume` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL , 
   `telefon` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL , 
   `salariu` INT NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_unicode_ci;

/*Inserarea unor valori*/
INSERT INTO `angajati` 
    (`id`, `email`,`nume`, `prenume`, `telefon`, `salariu`) 
VALUES 
    ('1', 'trifumarius01@gmail.com', 'Trifu', 'Marius', '0764310664', '100');
INSERT INTO `angajati` 
    (`id`, `email`,`nume`, `prenume`, `telefon`, `salariu`) 
VALUES 
    ('2', 'grigoreantipa@yahoo.com', 'Grigore', 'Antipa', '0746783413', '1000');
INSERT INTO `angajati` 
    (`id`, `email`,`nume`, `prenume`, `telefon`, `salariu`) 
VALUES 
    ('3', 'salaupaul@gmail.com', 'Salau', 'Paul', '0787697436', '500');
INSERT INTO `angajati` 
    (`id`, `email`,`nume`, `prenume`, `telefon`, `salariu`) 
VALUES 
    ('4', 'mariaioana@yahoo.com', 'Maria', 'Ioana', '0769867899', '600');
INSERT INTO `angajati` 
    (`id`, `email`,`nume`, `prenume`, `telefon`, `salariu`) 
VALUES 
    ('5', 'oprescucostel@gmail.com', 'Oprescu', 'Costel', '0712323452', '60');

/*updatarea unui camp al unui angajat*/
update angajati set salariu=4000 where id=1;

/*selectarea tutoror elementelor din tabela angajati*/
select * from angajati;

/*selectarea angajatilor care au salariul mai mare de 1000 lei*/
select * from angajati where salariu>1000;
