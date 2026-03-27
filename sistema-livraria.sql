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
