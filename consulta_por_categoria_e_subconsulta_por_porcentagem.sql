--Porcentagem das categorias
SELECT c.nome_categoria As Nome_categoria, COUNT(iv.produto_id) As QTD_VENDAS
from itens_venda iv
join vendas v on v.id_venda = iv.venda_id
JOIN produtos p on p.id_produto = iv.produto_id
JOIN categorias c on c.id_categoria = p.categoria_id
GROUP by Nome_categoria
ORDER BY QTD_VENDAS DESC;

SELECT COUNT(iv.produto_id) AS QTDVENDAS from itens_venda iv;

--Subconsulta
SELECT Nome_categoria, QTD_VENDAS, ROUND(100.0*QTD_VENDAS/(SELECT COUNT(*) from itens_venda), 2) || '%' as "Porcentagem"
From (
  SELECT c.nome_categoria As Nome_categoria, COUNT(iv.produto_id) As QTD_VENDAS
  from itens_venda iv
  join vendas v on v.id_venda = iv.venda_id
  JOIN produtos p on p.id_produto = iv.produto_id
  JOIN categorias c on c.id_categoria = p.categoria_id
  GROUP by Nome_categoria
  ORDER BY QTD_VENDAS DESC
)
