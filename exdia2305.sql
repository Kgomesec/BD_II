drop database if exists pessoa8;
create database pessoa8;
use pessoa8;
create table humanos2 (
	id_pessoa int not null auto_increment,
    nome varchar(50),
    cidade varchar(50),
    primary key (id_pessoa)
)default charset = UTF8MB4;

	insert into humanos2 (nome, cidade)
    values
    ("Jaca", "São Paulo"),
    ("jeca", "Santos"),
    ("Jica", "fenix"),
    ("Joca", "Mogi"),
    ("Juca", "NY");
    
    select * from humanos2;
    
    create table carro(
    id_carro int not null auto_increment,
    nome_carro varchar(50),
    id_pessoa int,
    primary key (id_carro),
    constraint fk_PesCarro foreign key (id_pessoa) references humanos2 (ID_Pessoa)
    ) default charset utf8mb4;
    
    insert into carro (nome_carro, id_pessoa)
    values
    ("Porsche", 1),
    ("Ferrari", 2),
    ("Fusca", 3),
    ("Moto", 4),
    ("Kombi do Pastel", 5);

	select * from carro;