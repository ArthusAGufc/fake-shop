## ⚙️ Pipeline CI/CD 

A pipeline é executada automaticamente a cada push na branch `main` ou de forma manual via GitHub Actions.

## ATENÇÃO SE NAO DESEJA EXECUTAR O ACTION NO COMMIT, escreva nos comentarios 

```bash
[skip ci]
```
---

### 🔨 Etapas:

#### CI (Build)
- Realiza o build da imagem Docker a partir da pasta `src/`
- Faz push da imagem para o Docker Hub com duas tags:
  - `latest`
  - `v<run_number>`

#### CD (Deploy)
- Configura acesso ao cluster Kubernetes (via `KUBE_CONFIG_DATA`)
- Aplica os manifests em `k8s/deployment.yaml`
- Substitui a imagem com a tag gerada no CI (`v<run_number>`)

---

## 🔐 Secrets Necessárias no GitHub

| Nome               | Descrição                           |
|--------------------|--------------------------------------|
| `DOCKER_USERNAME`  | Seu usuário Docker Hub              |
| `DOCKER_PASSWORD`  | Token de acesso gerado no Docker Hub|
| `KUBE_CONFIG_DATA` | Kubeconfig em base64 do cluster     |

---

## 📌 Como rodar localmente (opcional)

```bash
cd src/
docker build -t fake-shop .
docker run -p 5000:5000 fake-shop
