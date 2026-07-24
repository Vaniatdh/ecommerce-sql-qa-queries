# Modelagem do Banco de Dados - E-Commerce

Este documento descreve a estrutura das tabelas do banco de dados relacional simulado para suporte aos testes de integridade e consultas SQL de QA.

## Estrutura das Tabelas

### 1. Tabela: `clientes`
Armazena os dados cadastrais dos compradores.
* `id` (INT) - Chave Primária
* `nome` (VARCHAR) - Nome do cliente
* `email` (VARCHAR) - E-mail do cliente

### 2. Tabela: `produtos`
Armazena os itens disponíveis no catálogo.
* `id` (INT) - Chave Primária
* `nome_produto` (VARCHAR) - Nome do produto
* `preco` (DECIMAL) - Preço unitário
* `estoque` (INT) - Quantidade disponível

### 3. Tabela: `pedidos`
Armazena os pedidos realizados no checkout.
* `id` (INT) - Chave Primária
* `cliente_id` (INT) - Chave Estrangeira (liga com `clientes.id`)
* `valor_total` (DECIMAL) - Valor total da compra
* `status_pagamento` (VARCHAR) - Ex: 'PAGO', 'PENDENTE', 'CANCELADO'