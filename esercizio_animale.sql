INSERT INTO animale (specie, nome, data_nascita, peso)
VALUES
('Leone', 'Simba', '2015-04-01', 190.5),
('Tigre', 'Shere Khan', '2013-07-12', 220.3),
('Elefante', 'Dumbo', '2018-06-20', 5400.0),
('Giraffa', 'George', '2017-02-15', 800.2),
('Panda', 'Pondo', '2014-08-18', 100.1),
('Zebra', 'Marty', '2016-05-30', 250.4),
('Gorilla', 'Koko', '2012-11-10', 220.8),
('Canguro', 'Roo', '2020-03-25', 80.0),
('Pinguino', 'Pingu', '2021-01-01', 15.3),
('Tartaruga', 'Leonardo', '2000-05-15', 50.7);

INSERT INTO recinto (habitat)
VALUES
('Savana'),
('Giungla'),
('Foresta'),
('Prateria'),
('Montagna'),
('Zona Artica'),
('Oceano'),
('Deserto'),
('Laghetto'),
('Spiaggia');


INSERT INTO zoo (nome, città, indirizzo, numero_telefono)
VALUES
('Zoo di Roma', 'Roma', 'Via Roma 123', '612345678'),
('Safari Park', 'Milano', 'Corso Milano 456', '234567890'),
('Animalia', 'Firenze', 'Piazza Firenze 789', '0557890123'),
('Wild World', 'Napoli', 'Via Napoli 123', '812345678'),
('Ocean Park', 'Genova', 'Lungomare 1', '0109876543'),
('Palermo Zoo', 'Palermo', 'Viale Sicilia 210', '0912345678'),
('Zoo Torino', 'Torino', 'Corso Torino 310', '0112345678'),
('Panda Park', 'Bologna', 'Via Panda 123', '0512345678'),
('GGG Park', 'Verona', 'Strada Verona 567', '0451234567'),
('Wildlife Land', 'Campobasso', 'Piazza del Popolo 8', '0509876543');



INSERT INTO vive (id_zoo, id_recinto, id_animale, data_arrivo)
VALUES
(1, 1, 1, '2012-01-02'),
(2, 2, 2, '2021-01-10'),
(3, 3, 3, '2020-01-15'),
(4, 4, 4, '2011-05-20'),
(5, 5, 5, '2013-03-12'),
(6, 6, 6, '2020-11-25'),
(7, 7, 7, '2022-09-30'),
(8, 8, 8, '2021-07-22'),
(9, 9, 9, '2022-12-10'),
(10, 10, 10, '2020-05-15');

