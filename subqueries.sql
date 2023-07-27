##scalar subquery: Just 1 row and 1 column

select * from Table 
where column (select avg(column) from Table)


select * from Table t
join (select avg(column) col from Table) avg_col
    on t.column > avg_col.col


##multiple row subquery: returns multiple column and multiple row or only 1 column and multiple rows.


Select * 
from InvoiceLine il 
where (InvoiceId, UnitPrice) in (select InvoiceId, MAX(UnitPrice)
								from InvoiceLine il2
								group by InvoiceLineId)	




SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'tabela_desejada' AND COLUMN_NAME = 'coluna_desejada';


##Funcao CONCAT em subquery

SELECT
  nome,
  CONCAT(
    amigos_total,
    ' (',
    amigos_feminino,
    ')' 
  ) AS amigos
FROM (
  SELECT
    nome,
    COUNT(*) AS amigos_total,
    SUM(CASE WHEN sexo = 'Feminino' THEN 1 ELSE 0 END) AS amigos_feminino
  FROM amizades
  GROUP BY nome
) AS subquery;



##case WHEN



SELECT
  p.nome,
  COUNT(DISTINCT a.amigo_id) AS amigos_total,
  SUM(CASE WHEN s.sexo = 'Feminino' THEN 1 ELSE 0 END) AS amigos_feminino
FROM pessoas p
LEFT JOIN amigos a ON p.id = a.pessoa_id
LEFT JOIN sexo s ON p.id = s.pessoa_id
GROUP BY p.id, p.nome;


