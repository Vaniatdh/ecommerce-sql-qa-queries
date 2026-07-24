-- ============================================================
-- PROJETO: Validação de Dados no E-Commerce
-- OBJETIVO: Testes de Integridade e Regras de Negócio em Pedidos
-- ============================================================

-- 1. CT01: Validar se existem pedidos com status 'PAGO'
SELECT id, cliente_id, valor_total, status_pagamento
FROM pedidos
WHERE status_pagamento = 'PAGO';

-- 2. CT02: Identificar pedidos inconsistentes (bug no sistema)
SELECT id, cliente_id, valor_total
FROM pedidos
WHERE valor_total <= 0;

-- 3. CT03: Cruzar dados de Pedidos com Clientes (INNER JOIN)
SELECT 
    p.id AS numero_pedido,
    c.nome AS nome_cliente,
    c.email,
    p.valor_total,
    p.status_pagamento
FROM pedidos p
INNER JOIN clientes c ON p.cliente_id = c.id;