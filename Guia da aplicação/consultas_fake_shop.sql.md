
# 📊 Consultas SQL para o Banco de Dados - Fake Shop

Este arquivo contém consultas úteis para inspecionar e analisar os dados do banco de dados PostgreSQL utilizado pela aplicação Fake Shop.

---

## 🧾 Consultas Gerais

### 1. Listar todos os produtos

```sql
SELECT * FROM products
ORDER BY id;
```

### 2. Listar todos os pedidos

```sql
SELECT * FROM orders
ORDER BY created_at DESC;
```

### 3. Listar todos os itens de pedidos

```sql
SELECT * FROM order_items
ORDER BY order_id;
```

---

## 🔗 Consultas com JOIN

### 4. Produtos comprados com detalhes do pedido

```sql
SELECT 
  o.id AS order_id,
  o.user_name,
  o.user_email,
  o.total_price,
  o.created_at,
  p.name AS product_name,
  oi.quantity,
  oi.price
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON p.id = oi.product_id
ORDER BY o.created_at DESC;
```

### 5. Pedidos de um usuário específico

```sql
SELECT * FROM orders
WHERE user_email = 'usuario@email.com'
ORDER BY created_at DESC;
```

---

## 🎯 Consultas Específicas

### 6. Total de pedidos feitos

```sql
SELECT COUNT(*) AS total_pedidos FROM orders;
```

### 7. Valor total vendido

```sql
SELECT SUM(total_price) AS total_vendido FROM orders;
```

### 8. Produtos mais vendidos

```sql
SELECT 
  p.name,
  SUM(oi.quantity) AS total_vendido
FROM order_items oi
JOIN products p ON p.id = oi.product_id
GROUP BY p.name
ORDER BY total_vendido DESC
LIMIT 5;
```

### 9. Últimos pedidos realizados

```sql
SELECT * FROM orders
ORDER BY created_at DESC
LIMIT 10;
```

### 10. Detalhes de um pedido específico

```sql
SELECT 
  o.id AS order_id,
  o.user_name,
  p.name AS product_name,
  oi.quantity,
  oi.price
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON p.id = oi.product_id
WHERE o.id = 1;
```

---

Desenvolvido por Yvens Almeida 👨‍💻
