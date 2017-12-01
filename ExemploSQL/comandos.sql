--UPDATE Produtos SET descricao ='Caneta Azul Faber Castell' WHERE idProduto = 6
-- INSERT INTO Estoque(idProduto,quantidade) 
-- VALUES(3, 200), (4, 230)

-- INSERT INTO Clientes (nomeCliente, email, cpf)
-- VALUES ('Tadeu', 'tadeu@terra.com', '33123123'),
--     ('Roberta', 'Roberta@yahoo.com', '23128319'),
--     ('Wagner', 'wagner@yahoo.com', '3124124')

-- INSERT INTO Funcionarios(nomeFuncionario, cargo, departamento)
-- VALUES ('Fabricio', 'Vendedor', 'Comercial'),
--     ('Tatiana', 'Vendedor', 'Comercial'),
--     ('Thamiris', 'Atendente', 'Administrativo')

-- INSERT INTO Usuarios(idFuncionario, nomeUsuario, senha)
-- VALUES (1, 'fabricio', '123'),
--     (2, 'tatiana', '456')

-- INSERT INTO Pedidos(idCliente,idFuncionario)
-- VALUES (1,1),
--        (2,1),
--        (2,2)

-- INSERT INTO DetalhesPedido(idPedidos,idProduto, quantidadeComprada)
-- VALUES(1, 3, 5),
--       (1,4,30)      

-- SELECT p.nomeProduto AS 'Nome do Produto',
--        p.descricao AS 'Descricao do Produto',
--        e.quantidade AS 'Quantidade'
--        FROM Produtos p INNER JOIN  Estoque e
--        ON p.idProduto = e.idProduto -- dessa forma faz a pesquisa levando em consideração os campos que são relacionaveis, além de ter melhor performance
--        WHERE p.descricao LIKE 'Caneta Azul Faber Castell'
--        --WHERE Produtos.idProduto=Estoque.idProduto -- não e uma boa pesquisa ppq n leva em conta os relacionamentos entre tabelas

SELECT * FROM PEDIDOS
SELECT * FROM DetalhesPedido
SELECT * FROM Produtos
SELECT *FROM Clientes

SELECT c.nomeCliente AS 'NOME DO CLIENTE',
       p.nomeProduto AS 'NOME DO PRODUTO',
       q.quantidadeComprada AS 'QUANTIDADE COMPRADA'
       FROM DetalhesPedido q INNER JOIN 