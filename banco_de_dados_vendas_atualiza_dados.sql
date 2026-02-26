SELECT id_produto, nome_produto,preco from produtos;


UPDATE produtos set preco = 45 where nome_produto = 'Chocolate';
SELECT id_produto, nome_produto,preco from produtos WHERE nome_produto = 'Chocolate';


UPDATE produtos set preco = 2000 where nome_produto = 'Celular';
SELECT nome_produto, preco from produtos WHERE nome_produto = 'Celular';


UPDATE produtos set preco = 80 WHERE nome_produto = 'Bola de Futebol';
SELECT nome_produto, preco from produtos WHERE nome_produto = 'Bola de Futebol';


UPDATE produtos set preco = 110 WHERE nome_produto = 'Livro de Ficção';
SELECT nome_produto, preco from produtos WHERE nome_produto = 'Livro de Ficção';


UPDATE produtos set preco = 90 WHERE nome_produto = 'Camisa';
SELECT nome_produto, preco from produtos WHERE nome_produto = 'Camisa';