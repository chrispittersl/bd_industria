--Criação do Banco de dados
CREATE DATABASE bd_industria
--Conectando com o Banco de dados
USE bd_industria
--Criando tabela fornecedores
CREATE TABLE tbl_fornecedores(
Cod_Fornecedor int identity,
Razao_Social varchar(70),
Nome_Fantasia varchar(70),
CNPJ varchar(20),
Endereco varchar(50),
Num varchar(7),
Bairro varchar(25),
Cidade varchar(25),
Fone varchar(18),
Nome_Contato varchar(20),
Email varchar(50),
--Chave primária
primary key(Cod_Fornecedor),
)
--Criação da tabela produtos
CREATE TABLE tbl_produtos(
Cod_Produto int identity,
Descricao varchar(50),
Unidade varchar(2),
Qtde_Estoque float,
Caracteristicas varchar(50),
Cod_Fornecedor int,
primary key(Cod_Produto),
foreign key(Cod_Fornecedor) references tbl_fornecedores
)