SELECT Clientes.nome AS customer_name, Livros.nome AS book_name 
FROM Clientes 
INNER JOIN Compras ON Clientes.id = Compras.cliente_id 
INNER JOIN Livros ON Compras.livro_id = Livros.id;