

-- corretta:
CREATE TABLE azienda (
  id_azienda INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  luogo VARCHAR(255),
  settore VARCHAR(255),
  tipologia VARCHAR(255)
);

CREATE TABLE Tutor (
  id_tutor INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  cognome VARCHAR(255),
  materia VARCHAR(255)
 );
 
 CREATE TABLE Tirocinante (
 matricola INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(255) NOT NULL,
 cognome VARCHAR(255) NOT NULL,
  classe VARCHAR (255),
  id_azienda INT,
  id_tutor INT,
  FOREIGN KEY (id_azienda) REFERENCES azienda(id_azienda),
  FOREIGN KEY (id_tutor) REFERENCES tutor (id_tutor)
  );

INSERT INTO azienda (nome, luogo, settore, tipologia)
VALUES
('Amazon', 'Milano', 'informatica', 'spa'),
('Amazon', 'Roma', 'logistica', 'spa'),
('Palmieri', 'Milano', 'amministrazione', 'srl'),
('Granarolo', 'Bologna', 'lattiero-caseario', 'spa'),
('Molisana', 'Campobasso', 'alimentare', 'spa');

INSERT INTO Tutor (nome, cognome, materia)
 VALUES
 ('Diego','Bianchi','database'),
 ('Mattia', 'Neri', 'programmazione'),
 ('Lorella','Bianchi','economia'),
 ('Gianni','Esposito','zootecnia'),
 ('Annalisa','Iannacone','diritto');
 
 INSERT INTO Tirocinante (nome, cognome, classe)
 VALUES
 ('Mario','Rossi','5G'),
 ('Maria', 'Nero', '5E'),
 ('Giorgia','Pausini','4A'),
 ('Achille','Ferro','5G'),
 ('Noemi','Ciccone','5E');
 
-- 1)  nome e cognome degli studenti che svolgono il tirocinio ad Amazon
SELECT te.nome, te.cognome  'studenti tirocinanti'
FROM azienda a JOIN tirocinante te ON a.id_azienda = te.id_azienda
WHERE a.nome = 'Amazon'; 

-- 2)  settore e tipologia delle aziende in cui ha svolto il tirocinio Mario Rossi
SELECT a.settore, a.tipologia 'settore e tipologia azienda'
FROM azienda a JOIN tirocinante te ON a.id_azienda = te.id_azienda
WHERE te.nome = 'Mario' AND te.cognome = 'Rossi';

-- 3)  nome, cognome e materie dei tutor dei tirocinanti del settore informatica

SELECT tu.nome, tu.cognome,  tu.materia 
FROM tutor tu JOIN tirocinante te ON tu.id_tutor = te.id_tutor
JOIN azienda a  ON a.id_azienda=te.id_azienda
WHERE a.settore = 'informatica';

-- 4)  i luoghi dove svolgono i tirocini gli studenti seguiti dal tutor di cognome Bianchi
SELECT a.luogo 'Città dei tirocinanti di Bianchi'
FROM tutor tu JOIN tirocinante te ON tu.id_tutor = te.id_tutor
JOIN azienda a  ON a.id_azienda=te.id_azienda
WHERE tu.cognome = 'Bianchi';

-- 5) quanti tirocinanti ha ciascuna azienda di Milano
SELECT a.nome 'nome azienda', COUNT(te.nome) 'tirocinanti aziende milano'
FROM azienda a JOIN tirocinante te ON a.id_azienda=te.id_azienda
WHERE a.luogo = 'Milano'
GROUP BY a.nome;
 