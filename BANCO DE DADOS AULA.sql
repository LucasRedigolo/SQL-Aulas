/*

CREATE DATABASE Papelaria
ON
(
NAME = 'Papelaria_Data',
FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\Data\Papelaria_Data.mdf',
SIZE = 20MB,
MAXSIZE = 100MB,
FILEGROWTH = 10MB
)
LOG ON
(
NAME = 'Papelaria_Log',
FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\Data\Papelaria_Log.ldf',
SIZE = 30MB,
MAXSIZE = 200MB,
FILEGROWTH= 15MB
)
GO
USE Papelaria
GO
CREATE TABLE Clientes(
idCliente int identity primary key,
nomeCliente varchar(50) not null,
email varchar(50) not null,
cpf varchar(15) not null unique,
dataCadastro datetime default getDate()
)
GO
CREATE TABLE Categorias(
idCategoria int identity primary key,
titulo varchar(30) not null
)
GO
CREATE TABLE Produtos(
idProduto int identity primary key,
nomeProduto varchar(50) not null, 
descricao text not null,
idCategoria int foreign key references Categorias not null,
preco decimal(10,2) not null
)
GO
CREATE TABLE Estoque(
idEstoque int identity primary key,
idProduto int foreign key references Produtos not null,
quantidade int not null
)
GO
CREATE TABLE Funcionarios(
idFuncionario int identity primary key,
nomeFuncionario varchar(50) not null,
cargo varchar(50) not null,
departamento varchar(30) not null,
)
GO
CREATE TABLE Usuarios(
idUsuario int identity primary key,
idFuncionario int foreign key references Funcionarios not null,
nomeUsuario varchar(20) not null,
senha varchar(100) not null
)
GO
CREATE TABLE Pedidos(
idPedidos int identity primary key,
idCliente int foreign key references Clientes not null,
idFuncionario int foreign key references funcionarios not null,
dataPedido datetime default getDate()
)
GO
CREATE TABLE DetalhesPedido(
idDetalhes int identity primary key,
idPedidos int foreign key references Pedidos not null,
idProduto int foreign key references Produtos not null,
quantidadeComprada int not null
)
*/
--SELECT * FROM Categorias
--INSERT INTO Categorias(titulo)values('Escolar'), ('Inform�tica')
--GO
--SELECT * FROM Categorias
--SELECT * FROM Produtos
--UPDATE Produtos SET descricao='Caneta Azul Faber Castell' WHERE idProduto=4
--GO
--UPDATE Produtos SET preco=preco*1.2 WHERE idProduto < 7
--GO
--SELECT *FROM Produtos

-- DELETE FROM Produtos WHERE idProduto>6
-- GO
-- SELECT * FROM Produtos
