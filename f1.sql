drop database if exists f1;
create database f1;
use f1;
create table piloto (
    id_piloto int not null auto_increment,
    nome varchar(50),
    equipe varchar(50),
    nacionalidade varchar(50),
    pontuacao int,
    companheiro_piloto varchar(50),
    Q_títulos int,
    nascimento datetime,
    patrocinador varchar(50),
      id_carro foreign key (id_carro) references carro (id_carro)
) default charset = utf8mb4;

create table pista(
    id_pista int not null auto_increment,
    nome_pista varchar(50),
    pais varchar(50),
    vencedor_pista varchar(50),
    melhor_tempo_pista varchar(50),
    constraint id_piloto foreign key (id_piloto) references piloto (id_piloto),
    tamanho_pista float(15),
    numero_voltas int(10),
    sentido_pista varchar(10), 
    condicoes_pista varchar(20),
    previsao_tempo varchar(20)
) default charset = utf8mb4;

create table carro(
  id_carro int not null auto_increment,
  marca varchar(20),
  modelo varchar(20),
  peso_carro float(10),
  potencia_carro int(10),
  motor varchar(20),
  material_chasi varchar(20),
  suspensão enum ("ar", "independente", "hidropneumatico"),
  tipo_roda varchar(30)
  ) default charset = utf8mb4;
