drop database if exists F1;
create database F1;
use F1;
create table Piloto (
	id_piloto int not null auto_increment,
    nome varchar(50),
    equipe varchar(50),
    nacionalidade varchar(50),
    pontuacao int,
    companheiro_piloto varchar(50),
    Q_títulos int,
    nascimento datetime
    #patrocinador
    #treinadores do piloto (como nutricionistas, treinador de corrida, etc)
    
) default charset = utf8mb4;

create table pista(
	id_pista int not null auto_increment,
    nome_pista varchar(50),
    pais varchar(50),
    ganhador_pista varchar(50),
    melhor_tempo_pista varchar(50),
    constraint id_piloto foreign key (id_piloto) references Piloto (id_piloto) 
    #tamanho da pista
    #numero de voltas
    #sentido (horario ou antihorario)
    #condicoes da pista
    #dados meteorologicos
) default charset = utf8mb4;