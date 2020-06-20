CREATE database MIT;
USE MIT;
drop database MIT;

CREATE TABLE Cliente (
  idCliente INT primary key auto_increment,
  Usuario VARCHAR(45),
  Senha varchar(45),
  CNPJ CHAR(14)
  );
  
  insert into Cliente values 
  (null, 'Colepav', 'Colepav123', '12162177001064'),
  (null, 'Ecotrans', 'Ecotrans123', '86248420001262'),
  (null, 'Eco Urbis', 'EcoUrbis123', '70371230001461'),
  (null, 'Ecobraz', 'Ecobraz123', '14197457000142'),
  (null, 'Parque Ibirapuera', 'ParqueIbirapuera123', '68523541578451'),
  (null, 'Bandtec', 'bandtec123', '07165496000100');
  select * from Cliente;
  
CREATE TABLE Endereço (
  idEndereço INT primary key auto_increment,
  Numero INT,
  CEP CHAR(8)
  );
  insert into Endereço values
  -- Colepav
  (null, 66 , '09580130'),
  (null, 34, '08548746'),
  (null, 458 , '69856578'),
  (null, 598, '25698565'),
  -- Ecotrans
  (null, 695, '09580370'),
  (null, 56, '48568752'),
 -- Eco Urbis
  (null, 3621, '05798350' ),
  (null, 589, '15896547' ),
  (null, 485, '78523654' ),
  -- Ecobraz
  (null, 83, '03351090' ),
  (null, 258, '48562586' ),
  (null, 785, '35689545' ),
  -- ibirapuera
  (null, 1000, '04098901' ),
  (null, 1500, '04094005' ),
  (null, 2000, '04094000' ),
   -- bandtec
  (null, 595, '01414001'),
  (null, 595, '01414001'),
  (null, 595, '01414001');
  select * from Endereço;
  
CREATE TABLE Lixeira (
  idLixeira INT primary key auto_increment,
  Cliente_idCliente INT,
  IdSensorEntrada CHAR(5) unique,
  IdSensor1 CHAR(5) unique,
  IdSensor2 CHAR(5) unique,
  IdSensor3 CHAR(5) unique,
  Endereço_idEndereço INT,
  FOREIGN KEY (Cliente_idCliente)REFERENCES Cliente (idCliente),
  FOREIGN KEY (Endereço_idEndereço)REFERENCES Endereço (idEndereço)
);

insert into Lixeira values
(null, 1 ,'E1','N1','N2','N3', 1),
(null, 2 ,'E2','N4','N5','N6', 5),
(null, 3 ,'E3','N7','N8','N9', 7),
(null, 1 ,'E4','N10','N11','N12', 2),
(null, 1 ,'E5','N13','N14','N15', 3),
(null, 5 ,'E6','N16','N17','N18', 13),
(null, 5 ,'E7','N19','N20','N21', 14),
(null, 5 ,'E8','N22','N23','N24', 15),
(null, 4 ,'E9','N25','N26','N27', 10),
(null, 4 ,'E10','N28','N29','N30', 11),
(null, 4 ,'E11','N31','N32','N33', 12),
(null, 1 ,'E12','N34','N35','N36', 4),
(null, 3 ,'E13','N37','N38','N39', 8),
(null, 3 ,'E14','N40','N41','N42', 9),
(null, 2 ,'E15','N43','N44','N45', 6),
(null, 6 ,'E16','N46','N47','N48', 15),
(null, 6 ,'E17','N49','N50','N51', 17),
(null, 6 ,'E18','N52','N53','N54', 18);
select * from Lixeira;


CREATE TABLE StatusSensor(
  IdMovimentacao INT primary key auto_increment,
  NivelTotal INT NULL,
  DataHora DATETIME NULL,
  Lixeira_idLixeira INT,
  FOREIGN KEY (Lixeira_idLixeira) REFERENCES Lixeira (idLixeira)
);

