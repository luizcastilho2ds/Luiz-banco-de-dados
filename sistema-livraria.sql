-- Criar tabela Clientes
CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) NOT NULL
);

-- Criar tabela Compras
CREATE TABLE Compras (
    CompraID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT NOT NULL,
    NomeLivro VARCHAR(100) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);


SELECT * FROM Clientes;
-- Inserir dados na tabela Clientes
INSERT INTO Clientes (nomeCliente, emailCliente) VALUES
('João Silva', 'joao.silva@email.com'),
('Maria Santos', 'maria.santos@email.com'),
('Pedro Oliveira', 'pedro.oliveira@email.com'),
('Ana Costa', 'ana.costa@email.com'),
('Carlos Mendes', 'carlos.mendes@email.com');

-- Inserir dados na tabela Compras
INSERT INTO Compras (ClienteID, NomeLivro) VALUES
(1, 'O Senhor dos Anéis'),
(1, '1984'),
(2, 'Dom Casmurro'),
(3, 'O Cortiço'),
(2, 'Memórias Póstumas de Brás Cubas'),
(4, 'Grande Sertão: Veredas'),
(5, 'Capitães da Areia');


SELECT 
    Clientes.nomeCliente,
    Compras.NomeLivro
FROM Clientes
INNER JOIN Compras ON Clientes.ID = Compras.ClienteID;
