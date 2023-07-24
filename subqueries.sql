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


SELECT
  p.nome,
  COUNT(DISTINCT a.amigo_id) AS amigos_total,
  SUM(CASE WHEN s.sexo = 'Feminino' THEN 1 ELSE 0 END) AS amigos_feminino
FROM pessoas p
LEFT JOIN amigos a ON p.id = a.pessoa_id
LEFT JOIN sexo s ON p.id = s.pessoa_id
GROUP BY p.id, p.nome;