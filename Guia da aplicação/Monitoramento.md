# 📊 Monitoramento com Prometheus e Grafana

Este guia documenta o processo de instalação e configuração de um ambiente de monitoramento para a aplicação **Fake Shop**, utilizando **Prometheus** como coletor de métricas e **Grafana** como ferramenta de visualização. 
---

## 🚀 Etapas para ativar o monitoramento

### 1. Aplicar o deployment do Prometheus

```bash
kubectl apply -f prometheus/deployment.yaml
```

---

### 2. Obter credenciais de acesso ao Grafana

```bash
kubectl get secret grafana -n default -o jsonpath="{.data.admin-user}" | base64 --decode; echo
kubectl get secret grafana -n default -o jsonpath="{.data.admin-password}" | base64 --decode; echo
```

---

### 3. Acessar as métricas via endpoint `/metrics`

- **Fake Shop:**
  
  ```
  http://<EXTERNAL-IP-FAKE-SHOP>:PORTA/metrics
  ```

- **Prometheus:**
  
  ```
  http://<EXTERNAL-IP-PROMETHEUS>:PORTA/metrics
  ```

📌 Use o comando abaixo para verificar os IPs externos:

```bash
kubectl get svc -n default
```

---

### 4. Acessar o Grafana

```bash
http://<EXTERNAL-IP-GRAFANA>:PORTA
```

Use o usuário e senha obtidos no passo 2 para fazer login.

---

## ⚙️ Configurando o Grafana

### ➕ Adicionar Prometheus como Data Source

1. Acesse ⚙️ **Configuration** > **Data Sources**
2. Clique em **Add data source**
3. Escolha o tipo **Prometheus**
4. No campo **URL**, insira:

```
http://prometheus-server
```

5. Clique em **Save & Test**

---

### 📈 Importar um Dashboard

Você pode importar dashboards da loja oficial do Grafana ou usar um personalizado:

#### ✅ Opção 1 – Loja do Grafana:

1. Vá em **+ (Create)** > **Import**
2. Cole o **ID** do dashboard da loja (ex: `11074` para Flask)
3. Clique em **Load** > **Import**

#### 🛠️ Opção 2 – Dashboard personalizado:

1. Vá em **+ (Create)** > **Import**
2. Clique em **Upload .json file** ou cole o conteúdo em dashboard `flask.json`
3. Clique em **Import**

---

## ✅ Resultado Esperado

Você terá um ambiente completo de monitoramento com:

- Exposição de métricas via `/metrics`
- Coleta automatizada com Prometheus
- Visualização em tempo real com dashboards no Grafana

---
