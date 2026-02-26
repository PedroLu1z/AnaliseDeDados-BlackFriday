-- Papel dos fornecedores na black friday
	SELECT strftime('%Y/%m', v.data_venda) AS AnoMes , f.nome as Nome_fornecedor, count(iv.produto_id) AS Qtd_Vendas
	from itens_venda iv
	join vendas v on v.id_venda = iv.venda_id
	join produtos p ON p.id_produto = iv.produto_id
	join fornecedores f on f.id_fornecedor = p.fornecedor_id
	GROUP by f.nome, AnoMes
	ORDER BY f.nome;


-- Categoria dos produtos na black friday
SELECT strftime('%Y/%m', v.data_venda) AS AnoMes , c.nome_categoria, count(iv.produto_id) AS Qtd_Vendas
from itens_venda iv
join vendas v on v.id_venda = iv.venda_id
JOIN produtos p on p.id_produto = iv.produto_id
JOIN categorias c on c.id_categoria = p.categoria_id
WHERE strftime('%m', v.data_venda) = '11' -- Aqui estamos referenciado apenas ao mes 11 de cada ano de operacao
GROUP BY c.nome_categoria, AnoMes
ORDER BY AnoMes, Qtd_Vendas DESC;


--Pior fornecedor da ultima Black Friday
SELECT strftime('%Y/%m', v.data_venda) AS AnoMes , f.nome as Nome_fornecedor, count(iv.produto_id) AS Qtd_Vendas
from itens_venda iv
join vendas v on v.id_venda = iv.venda_id
join produtos p ON p.id_produto = iv.produto_id
join fornecedores f on f.id_fornecedor = p.fornecedor_id
WHERE f.nome = 'NebulaNetworks' -- Pior fornecedor na última black friday
GROUP by f.nome, AnoMes
ORDER BY f.nome, Qtd_Vendas DESC;

