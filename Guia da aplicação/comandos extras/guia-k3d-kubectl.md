
# 🌐 Guia Completo: K3D + kubectl + Contextos

Este guia cobre comandos essenciais para trabalhar com clusters K3D locais e clusters remotos como os da DigitalOcean, usando `kubectl`.

---

## 🔧 K3D – Gerenciando Clusters Locais

### ▶️ Criar um novo cluster
```bash
k3d cluster create meu-cluster
```

### 📜 Listar clusters existentes
```bash
k3d cluster list
```

### ⏹️ Parar um cluster
```bash
k3d cluster stop meu-cluster
```

### 🚀 Iniciar um cluster parado
```bash
k3d cluster start meu-cluster
```

### ❌ Deletar um cluster
```bash
k3d cluster delete meu-cluster
```

### 🧪 Testar acesso ao cluster com `kubectl`
```bash
kubectl get nodes
```

---

## 📦 kubectl – Operações Essenciais

### 🔎 Listar pods
```bash
kubectl get pods
```

### 📡 Listar serviços (Services)
```bash
kubectl get svc
```

### 🔍 Ver logs de um pod
```bash
kubectl logs <nome-do-pod>
```

### 🚪 Entrar em um pod (terminal bash)
```bash
kubectl exec -it <nome-do-pod> -- bash
```

### 🛠️ Aplicar manifestos YAML
```bash
kubectl apply -f arquivo.yaml
```

### 🧼 Deletar recursos
```bash
kubectl delete -f arquivo.yaml
```

---

## 🔁 Contextos – Alternar entre clusters

### 👁️ Ver todos os contextos configurados
```bash
kubectl config get-contexts
```

### ✅ Ver contexto atual
```bash
kubectl config current-context
```

### 🔄 Mudar para um contexto específico
```bash
kubectl config use-context nome-do-contexto
```

Exemplo:
```bash
kubectl config use-context do-nyc1-desafio2dp
kubectl config use-context k3d-meu-cluster
```

---

## ⚙️ Dicas úteis

### 📁 Local padrão do kubeconfig
```bash
~/.kube/config
```

### 🌐 Para usar múltiplos kubeconfigs:
```bash
export KUBECONFIG=~/.kube/config:/outro/arquivo/config
```

### 🧙‍♂️ Alias para facilitar troca de clusters
Adicione ao seu `.bashrc` ou `.zshrc`:

```bash
alias dokctl='kubectl --context=do-nyc1-desafio2dp'
alias k3dctl='kubectl --context=k3d-meu-cluster'
```

---

## 🛠️ DigitalOcean CLI (doctl)

### 🔐 Autenticar com token
```bash
doctl auth init
```

### 📋 Listar clusters
```bash
doctl kubernetes cluster list
```

### ⬇️ Baixar e configurar kubeconfig
```bash
doctl kubernetes cluster kubeconfig save <nome-do-cluster>
```

---

## ✅ Verificando acesso ao cluster atual

```bash
kubectl get nodes
```

Se os nós aparecerem como `Ready`, o acesso está funcionando corretamente!

---
