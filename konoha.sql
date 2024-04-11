drop database if exists konohas;
create database konohas;
use konohas;
create table humanos (
id int not null auto_increment,
nome varchar(30),
nascimento date,
sexo enum ('F','M'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(30) default 'Brasil',
primary key (id)
) default charset=utf8;

insert into humanos
values
(default,'João','1986-11-11','M','80','1.88',default),
(default,'Jakeline','1990-07-12','F','56','1.68','EUA'),
(DEFAULT, 'Lee','2009-05-15','F','60','1.66','CHINA'),
(DEFAULT,'Takanay','2010-02-19','F','60','1.66','Japao'),
(default,'Peter','1990-02-15','M','99','1.99','EUA'),
(default,'Mary','1998-05-15','F','66','1.89','EUA'),
(default,'Tashira','1986-12-12','F','89','1.65','Indiana'),
(default,'pingpon','2023-08-16','M','85','1.65','China'),
(default,'Pedro','2024-01-19','M','15','0.50',default),
(default,'Juanito','2000-02-15','M','55','1.85','colombiana'),
(default,'Juanita','2000-05-15','F','55','1.86','colombiana'),
(default,'Athena','1680-01-15','F','65','1.69','Grecia'),
(default,'Ronaldo','2000-01-16','M','70','1.78',default),
(default,'Fabyana','2005-06-15','M','80','1.80',default),
(default,'Seya','1985-02-15','M','78','1.82','Italiana'),
(default,'Lua','1995-03-18','F','60','1.98','Italiana'),
(default,'Figo','2003-09-15','M','99','2.00','Espanhola');


select * from humanos;

