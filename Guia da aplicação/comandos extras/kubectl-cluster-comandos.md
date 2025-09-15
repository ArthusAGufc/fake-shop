
# 📘 Comandos `kubectl` Relacionados a Clusters

Este documento apresenta os principais comandos do `kubectl` para lidar com clusters Kubernetes, com explicações e exemplos práticos ao final.

---

## 🔹 Comandos e Suas Funções

### 1. `kubectl config get-clusters`
- **Descrição**: Lista todos os clusters configurados no arquivo `kubeconfig`.
- **Uso comum**: Saber quais clusters estão disponíveis para conexão.

---

### 2. `kubectl config current-context`
- **Descrição**: Exibe o contexto atual em uso (ou seja, qual cluster + usuário + namespace estão ativos).
- **Uso comum**: Verificar com qual cluster o `kubectl` está interagindo.

---

### 3. `kubectl config get-contexts`
- **Descrição**: Lista todos os contextos configurados, mostrando qual usuário está conectado a qual cluster.
- **Uso comum**: Ver os diferentes perfis de conexão e alternar entre clusters.

---

### 4. `kubectl config use-context <context-name>`
- **Descrição**: Altera o contexto atual para outro definido no `kubeconfig`.
- **Uso comum**: Mudar para outro cluster ou usuário rapidamente.

---

### 5. `kubectl cluster-info`
- **Descrição**: Mostra informações gerais sobre o cluster atual, como o endpoint da API e serviços principais.
- **Uso comum**: Obter URL da API do Kubernetes e links para dashboards.

---

### 6. `kubectl version --short`
- **Descrição**: Mostra a versão do cliente (`kubectl`) e do servidor (cluster Kubernetes).
- **Uso comum**: Checar se há compatibilidade entre o cliente e o cluster.

---

### 7. `kubectl get nodes`
- **Descrição**: Lista os nós do cluster.
- **Uso comum**: Ver quantos nós estão disponíveis e seu status.

---

### 8. `kubectl get nodes -o wide`
- **Descrição**: Igual ao comando anterior, mas com mais detalhes, como IPs, OS, arquitetura.
- **Uso comum**: Diagnóstico e informações adicionais dos nós.

---

### 9. `kubectl get pods -n kube-system`
- **Descrição**: Lista os pods do namespace `kube-system`, que geralmente incluem os componentes principais do cluster (como etcd, scheduler, controller-manager).
- **Uso comum**: Verificar se o cluster está funcionando corretamente.

---

### 10. `kubectl config view`
- **Descrição**: Mostra o conteúdo completo do `kubeconfig`, incluindo clusters, contextos, e credenciais.
- **Uso comum**: Debug, exportação ou edição manual de configurações.

---

## 🧪 Exemplos de Uso

```bash
# Listar todos os clusters disponíveis
kubectl config get-clusters

# Ver qual cluster/contexto está sendo usado no momento
kubectl config current-context

# Listar todos os contextos salvos
kubectl config get-contexts

# Mudar para um contexto chamado "minikube"
kubectl config use-context minikube

# Mostrar informações do cluster atual
kubectl cluster-info

# Mostrar versão do cliente e servidor Kubernetes
kubectl version --short

# Ver todos os nós do cluster
kubectl get nodes

# Ver detalhes dos nós (como IP e arquitetura)
kubectl get nodes -o wide

# Ver pods do namespace kube-system
kubectl get pods -n kube-system

# Visualizar todas as configurações do kubeconfig
kubectl config view
```

---

## ✅ Dica Extra

Se você quiser filtrar ou manipular a saída dos comandos, pode adicionar `| grep <palavra>` ou exportar para arquivos usando `> nome_arquivo.txt`.

Exemplo:

```bash
kubectl config view | grep server
```

---

Se quiser o arquivo `.md` salvo ou exportado como `.pdf` ou `.txt`, posso gerar também!
