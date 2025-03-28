# 🛒 Fake Shop - Kubernetes (k3d) Setup

Este repositório contém os arquivos e instruções para executar a aplicação Fake Shop em um cluster local do Kubernetes utilizando o `k3d`.

---

## 📁 Estrutura do Projeto

```
fake-shop/
├── k8s/
│   └── deployment.yaml         # Manifestos Kubernetes
├── src/
│   ├── Dockerfile              # Imagem da aplicação
│   ├── index.py                # App Flask
│   └── ...
└── README.md                   # Este arquivo
```

---

## 🏗️ Arquitetura do Cluster k3d-fake-shop

```
╭───────────────────────────────╮
│      Cluster: k3d-fake-shop   │
│  (Kubernetes v1.31.5+k3s1)    │
╰───────────────────────────────╯
            │
            ├── Nodes (3)
            │   ├─ k3d-fake-shop-server-0 (control-plane) - IP: 172.21.0.3
            │   ├─ k3d-fake-shop-agent-0 (worker)         - IP: 172.21.0.4
            │   └─ k3d-fake-shop-agent-1 (worker)         - IP: 172.21.0.5
            │
            ├── Deployments (default)
            │   ├─ fake-shop (1 pod)
            │   └─ postgre (1 pod)
            │
            ├── Services (default namespace)
            │   ├─ fake-shop  [NodePort]     → 5000:31263
            │   └─ postgre    [ClusterIP]    → 5432
            │
            ├── Services (kube-system)
            │   ├─ kube-dns         [ClusterIP]    → DNS interno
            │   ├─ metrics-server   [ClusterIP]    → Coleta de métricas
            │   └─ traefik          [LoadBalancer] → 80:30442, 443:31338
            │
            └── Load Balancer (Docker Container)
                └─ k3d-fake-shop-serverlb
                   ↳ Redireciona porta 5000 externa → 31263 (fake-shop)
```

### 📷 Imagem da arquitetura

![Arquitetura do Cluster](./A_diagram_in_flat_design_style_showcases_the_archi.png)

---

## 🚀 Requisitos

- Docker
- kubectl
- k3d
- Extensão SQLTools (VS Code, opcional)

---

## 🏗️ Criar o Cluster Local

```bash
k3d cluster create fake-shop --agents 2 --port 5000:30000@loadbalancer
```

---

## 🐳 Build da imagem Docker

A partir do diretório raiz do projeto:

```bash
docker build -t arthusagufc/fake-shop-desafio:v1 -f src/Dockerfile src/
docker push arthusagufc/fake-shop-desafio:v1
```

---

## ☸️ Aplicar os manifestos

```bash
kubectl apply -f k8s/deployment.yaml
```

Verifique:

```bash
kubectl get pods
kubectl get service
```

---

## 🌍 Acessar a aplicação (via NodePort)

Localmente:

```bash
http://localhost:31263
```

---

## 🔁 Alternativa: Port Forward

```bash
kubectl port-forward service/fake-shop 5001:5000
```

Acesse:

```bash
http://localhost:5001
```

---

## 🧪 Acessar o banco PostgreSQL com SQLTools

```bash
kubectl port-forward service/postgre 5433:5432
```

Configuração no SQLTools:

- **Host**: localhost
- **Porta**: 5433
- **Database**: ecommerce
- **Usuário**: ecommerce
- **Senha**: Pg1234

---

## 🧰 Ver informações do cluster Kubernetes

### Criar o script `k8s-info.sh`

```bash
nano k8s-info.sh
```

### Conteúdo do script:

```bash
#!/bin/bash

echo "============================="
echo "🔧 CONTEXTO ATUAL DO KUBECTL"
echo "============================="
kubectl config current-context
echo ""

echo "============================="
echo "📋 LISTA DE CONTEXTOS"
echo "============================="
kubectl config get-contexts
echo ""

echo "============================="
echo "🔍 DETALHES DO CONTEXTO ATUAL"
echo "============================="
kubectl config view --minify
echo ""

echo "============================="
echo "☸️  INFO DO CLUSTER"
echo "============================="
kubectl cluster-info
echo ""

echo "============================="
echo "🧠 VERSÃO DO CLUSTER"
echo "============================="
kubectl version
echo ""

echo "============================="
echo "🧱 NÓS DO CLUSTER"
echo "============================="
kubectl get nodes -o wide
echo ""

echo "============================="
echo "📦 PODS (TODOS OS NAMESPACES)"
echo "============================="
kubectl get pods -A
echo ""

echo "============================="
echo "🌐 SERVIÇOS (TODOS OS NAMESPACES)"
echo "============================="
kubectl get svc -A
echo ""

echo "============================="
echo "🚀 DEPLOYMENTS"
echo "============================="
kubectl get deployments -A
echo ""

echo "============================="
echo "🐳 CONTAINERS DOCKER RELACIONADOS AO K3D"
echo "============================="
docker ps | grep k3d
echo ""

echo "============================="
echo "🧱 LISTA DE CLUSTERS K3D"
echo "============================="
k3d cluster list
echo ""
```

### Tornar executável:

```bash
chmod +x k8s-info.sh
```

### Rodar:

```bash
./k8s-info.sh
```

---

Desenvolvido por Arthus Almeida 👨‍💻, para o desafio DEV OPS PRO 2, Fabricio Veronez
