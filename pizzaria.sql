#Kauã Gomes dos Santos 2DA
drop database if exists pizzaria;
create database pizzaria;
use pizzaria;

create table clientes(
	id int auto_increment primary key,
    nome varchar(100) not null,
    cpf varchar(14) unique,
    email varchar(100) unique,
    telefone varchar(20),
    endereco varchar(255) not null,
    data_nascimento date
);

create table pizzas(
	id INT auto_increment primary key,
    sabor varchar(50) not null,
    ingredientes text,
    tamanho enum('Pequena', 'Média', 'Grande') not null,
    preco decimal(8, 2) not null,
    disponivel boolean not null default true
);

create table fornecedores(
	id int auto_increment primary key,
    nome varchar(100) not null,
    cnpj varchar(20) unique,
    email varchar(100) unique,
    telefone varchar(20),
    endereco varchar(255) not null,
    produto_fornecido varchar(100) not null,
    preco_produto decimal(10, 2) not null,
    descricao_produto text,
    data_registro date,
    categoria_fornecedor varchar(50),
    status_fornecedor enum('Ativo', 'Inativo', 'Suspenso'),
    observacoes text
);

create table funcionarios(
	id int auto_increment primary key,
    nome varchar(100) not null,
    cpf varchar(14) unique,
    email varchar(100) unique,
    telefone varchar(20),
    endereco varchar(255) not null,
    cargo varchar(100) not null,
    salario decimal(10,2) not null,
    data_contratacao date not null,
    gerente_id int,
    foreign key(gerente_id) 
    references funcionarios(id)
);

#relacoes SQL
create table pedidos(
	id int auto_increment primary key,
    cliente_id int,
    foreign key(cliente_id) 
    references clientes(id),
    funcionario_id int,
    foreign key(funcionario_id)
    references funcionarios(id),
    data_pedido datetime not null,
    status enum('Em preparo', 'Pronto para entrega', 'Entregue',
    'Cancelado') not null,
    endereco_entrega varchar(255) not null,
    forma_pagamento enum('Dinheiro', 'Cartão de Crédito', 'Cartão de Débito', 'Pix') not null,
	total decimal(10, 2) not null,
    observacoes text,
    itens_pedidos json
);

#fornecedor e produtos fornecidos 
create table produtos_fornecidos(
	id int auto_increment primary key,
	fornecedor_id int,
    foreign key (fornecedor_id)
    references fornecedores(id),
    nome varchar(100) not null,
    preco decimal(10,2) not null,
    quantidade int not null,
    data_validadde date not null,
    unidade_medida enum('Kg', 'litro', 'unidade'),
    observacoes text
);