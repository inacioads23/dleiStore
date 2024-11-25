SELECT 
    p.idProduto,
    p.produto,
    COALESCE(SUM(CASE WHEN e.tipoMovimentacao = 'entrada' THEN e.quantidade ELSE 0 END), 0) - 
    COALESCE(SUM(CASE WHEN e.tipoMovimentacao = 'saída' THEN e.quantidade ELSE 0 END), 0) AS quantidadeEmEstoque
FROM 
    produto p
LEFT JOIN 
    estoque e ON p.idProduto = e.idProduto
GROUP BY 
    p.idProduto, p.produto;
