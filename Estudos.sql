CREATE TABLE Produtos (
    ID TEXT PRIMARY KEY,
    nome VARCHAR(25),
    descricao VARCHAR(25),
    preco DECIMAL(10,2),
    categoria VARCHAR(25)
);


CREATE TABLE IF NOT EXISTS Colaboradores (
    Id TEXT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100),
    dataContratacao DATE,
    telefone VARCHAR(20),
    email VARCHAR(100),
    rua VARCHAR(100) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    serie VARCHAR(8) NOT NULL
);

Create table Forncedores (
  Id TEXT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100),
    dataContratacao DATE,
    telefone VARCHAR(20),
    email VARCHAR(100),
    rua VARCHAR(100) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    cep VARCHAR(8) NOT NULL,
   contato varchar (100) not null
);
create table Clientes (
id TEXT Primary KEY,
nome Varchar (250),
email varchar (100) default 'seu email',
endereco varchar (250),
telefone varchar (20)
);

 Create table pedidos (
 ID text primary key,
 idcliente Text,
datahorapedido datetime,
Status varchar (50),
foreign key (idcliente) references clientes (ID) on delete cascade 
);

create table itenspedidos (
preçounitario decimal (10,2), 
quantidade integer,
idpedidos text,
idprodutos text,
primary key (idprodutos,idpedidos), 
foreign key (idprodutos) references produtos (ID) on delete cascade,
foreign key (idpedidos) references pedidos (ID) on delete CASCADE
)




INSERT INTO Colaboradores (Id, nome, cargo, dataContratacao, telefone, email, rua, bairro, cidade, estado, serie)
VALUES
('C001', 'Ana Souza', 'Analista de TI', '2021-03-15', '92999990001', 'ana.souza@empresa.com', 'Rua das Flores, 123', 'Centro', 'Manaus', 'AM', 'AM12345'),
('C002', 'Bruno Lima', 'Técnico SDT', '2022-07-01', '92999990002', 'bruno.lima@empresa.com', 'Av. Djalma Batista, 500', 'Chapada', 'Manaus', 'AM', 'AM12346'),
('C003', 'Carla Mendes', 'Gerente de Projetos', '2019-11-20', '92999990003', 'carla.mendes@empresa.com', 'Rua Recife, 45', 'Adrianópolis', 'Manaus', 'AM', 'AM12347'),
('C004', 'Diego Farias', 'Estagiário', '2023-01-10', '92999990004', 'diego.farias@empresa.com', 'Rua Belo Horizonte, 78', 'Parque 10', 'Manaus', 'AM', 'AM12348'),
('C005', 'Elaine Torres', 'Coordenadora Financeira', '2020-05-30', '92999990005', 'elaine.torres@empresa.com', 'Av. Constantino Nery, 900', 'Flores', 'Manaus', 'AM', 'AM12349');

INSERT INTO Fornecedores (Id, nome, cargo, dataContratacao, telefone, email, rua, bairro, cidade, estado, cep, contato)
VALUES
('F001', 'Distribuidora Norte Ltda', 'Fornecedor de Materiais', '2018-02-10', '92988880001', 'contato@norteltda.com', 'Rua Ipixuna, 200', 'Compensa', 'Manaus', 'AM', '69036000', 'João Ramos'),
('F002', 'Tech Suprimentos SA', 'Fornecedor de TI', '2020-09-05', '92988880002', 'vendas@techsuprimentos.com', 'Av. Torquato Tapajós, 1500', 'Cidade Nova', 'Manaus', 'AM', '69093000', 'Marta Alves'),
('F003', 'Amazônia Equipamentos', 'Fornecedor Industrial', '2017-06-18', '92988880003', 'comercial@amazoniaequip.com', 'Rua Silves, 33', 'Educandos', 'Manaus', 'AM', '69080000', 'Paulo Gomes'),
('F004', 'Rio Papelaria e Cia', 'Fornecedor de Escritório', '2021-12-01', '92988880004', 'pedidos@riopapelaria.com', 'Rua Barroso, 77', 'Centro', 'Manaus', 'AM', '69010000', 'Sônia Castro'),
('F005', 'MetalMax Indústria', 'Fornecedor de Peças', '2019-04-25', '92988880005', 'contato@metalmax.com', 'Av. Autaz Mirim, 620', 'Distrito Industrial', 'Manaus', 'AM', '69075000', 'Ricardo Nunes');

--------------> Insert into testes para testar consultas em dados falsos 


