create schema exemplo;
show databases;
use exemplo;
create table if not exists clients(
id int primary key,
nome varchar(50),
idade int,
email varchar(100) unique
);
create table alunos(
matricula int primary key,
nome varchar(50),
data_nascimento date
);
create table pedidos(
id int primary key,
cliente_id int,
data_pedido date,
foreign key (cliente_id) references clients(id)
);
