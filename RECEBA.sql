create database humanidade;
use humanidade;

create table clientes 
(
	pessoa_id int not null auto_increment,
    nome varchar(20),
    sobrenome varchar(20),
    sexo enum('m', 'f'),
    nascimento date, 
    rua varchar(20),
    bairro varchar(20),
    cidade varchar(20),
    estado varchar(2),
    pais varchar(20),
    PRIMARY KEY (pessoa_id)
);

insert into cliente 
(pessoa_id, nome, sobrenome, sexo, nascimento, rua, bairro, cidade, estado, pais) 
values
(null, 'Willian', 'Silva', 'm', '1972-05-27', 'Rua João', 'Mooca', 'São Paulo', 'SP', 'Brasil'),
(null, 'José', 'Silva', 'm', '1972-04-27', 'Rua Mauro', 'Mooca', 'São Paulo', 'SP', 'Brasil'),
(null, 'Maria', 'Silva', 'f', '1982-04-27', 'Rua Faixa', 'Itaquera', 'São Paulo', 'SP', 'Brasil'),
(null, 'Felicia', 'Breake', 'f', '1990-04-24', 'Rua Fish', 'TOMATE', 'New York', 'NY', 'EUA'),
(null, 'Peter', 'Parker', 'm', '2000-04-27', 'Rua Spider', 'Spider', 'New York', 'NY', 'EUA'),
(null, 'Felix', 'Pizza', 'm', '2012-12-18', 'Rua Italia', 'Macarrone', 'Napoli', 'NP', 'Italia'),
(null, 'Francheca', 'Cauzone', 'f', '2012-05-02', 'Rua Baggio', 'Torre', 'Milan', 'ML', 'Italia');

select * from cliente;
select pessoa_id, nome, sobrenome from cliente where sobrenome = 'Silva';

insert into cliente 
(pessoa_id, nome, sobrenome, sexo, nascimento, rua, bairro, cidade, estado, pais) 
values
(null, 'Takeshi', 'Ohara', 'm', '1972-02-28', '', '', '', '', '');

update cliente set
rua = 'Goku',
bairro = 'Tofu',
cidade = 'Fuji',
pais = 'Japão',
estado = 'TK'
where pessoa_id = 8;

delete from cliente where pessoa_id = 8;
