drop database if exists NOVATEC;
CREATE database NOVATEC;
USE NOVATEC;
-- Criando a tabela de Departamentos
CREATE TABLE Departamentos (
    departamento_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    localizacao VARCHAR(100)
);

-- Criando a tabela de Funcionários
CREATE TABLE Funcionarios (
    funcionario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100),
    salario DECIMAL(10, 2),
    departamento_id INT,
    data_contratacao DATE,
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(departamento_id)
);

-- Inserindo dados na tabela de Departamentos
INSERT INTO Departamentos (nome, localizacao) VALUES ('Recursos Humanos', 'São Paulo');
INSERT INTO Departamentos (nome, localizacao) VALUES ('TI', 'Rio de Janeiro');
INSERT INTO Departamentos (nome, localizacao) VALUES ('Financeiro', 'Belo Horizonte');
INSERT INTO Departamentos (nome, localizacao) VALUES ('Logistica', 'Belo Horizonte');
INSERT INTO Departamentos (nome, localizacao) VALUES ('Vendas', 'Belo Horizonte');
INSERT INTO Departamentos (nome, localizacao) VALUES ('Ti', 'Belo Horizonte');
INSERT INTO Departamentos (nome, localizacao) VALUES ('Ti', 'São Paulo');
INSERT INTO Departamentos (nome, localizacao) VALUES ('Financeiro', 'Belo Horizonte');

-- Inserindo dados na tabela de Funcionários
INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('João Silva', 'Analista de Sistemas', 4500.00, 2, '2022-01-15');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Maria Souza', 'Gerente de RH', 7000.00, 1, '2021-06-10');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Carlos Pereira', 'Analista Financeiro', 5300.00, 3, '2023-03-01');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Jokina Franscesca', 'Analista Logistica', 5000.00, 4, '2016-02-01');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Cassio Fernando', 'Gerente vendas', 16300.00, 5, '2000-02-01');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Paulo José', 'Gerente de Ti', 16500.00, 2, '2002-02-01');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Otavio Santos', 'Analista de Hardware', 2300.00, 2, '2022-06-01');

INSERT INTO Funcionarios (nome, cargo, salario, departamento_id, data_contratacao) 
VALUES ('Felipa Silva', 'Estagio Financeiro', 1300.00, 3, '2024-02-12');

select * from funcionarios;
select * from departamentos;

select nome, cargo, salario from funcionarios;

select * from funcionarios where salario > 10000;
select * from funcionarios where salario < 10000;
#<> é igual a uma diferença
select * from funcionarios where salario <> 10000;
select * from funcionarios where salario = 10000;

select f.nome as Duncionario, f.cargo as Cargo, d.nome as Departamento, d.localizacao as Localização
from Funcionarios f
join Departamentos d on f.departamento_id = d.departamento_id;

select COUNT(*) as nome 
from funcionarios;

select sum(salario) from funcionarios;
select avg(salario) from funcionarios;
select max(salario) * 2 from funcionarios;
select min(salario) + 1000 from funcionarios;

select salario, sum(salario)
from funcionarios group by salario
having SUM(salario) > 2000;

select distinct  nome, salario from funcionarios;
select * from funcionarios limit 2;