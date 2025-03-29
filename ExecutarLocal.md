
🛒 Fake Shop - Kubernetes (k3d) Setup

Este repositório contém os arquivos e instruções para executar a aplicação Fake Shop em um cluster local do Kubernetes utilizando o k3d.

📁 Estrutura do Projeto

fake-shop/
├── k8s/
│   └── deployment.yaml         # Manifestos Kubernetes
├── src/
│   ├── Dockerfile              # Imagem da aplicação
│   ├── index.py                # App Flask
│   └── ...
└── README.md                   # Este arquivo

🚀 Requisitos

Docker

kubectl

k3d

Extensão SQLTools (VS Code, opcional)

🏗️ Criar o Cluster Local

k3d cluster create fake-shop --agents 2 --port 5000:30000@loadbalancer

🐳 Build da imagem Docker

A partir do diretório raiz do projeto:

docker build -t arthusagufc/fake-shop-desafio:v1 -f src/Dockerfile src/
docker push arthusagufc/fake-shop-desafio:v1

☸️ Aplicar os manifestos

kubectl apply -f k8s/deployment.yaml

Verifique:

kubectl get pods
kubectl get service

🌍 Acessar a aplicação (via NodePort)

Localmente:

http://localhost:31263

🔁 Alternativa: Port Forward

kubectl port-forward service/fake-shop 5001:5000

Acesse:

http://localhost:5001

🧪 Acessar o banco PostgreSQL com SQLTools

kubectl port-forward service/postgre 5433:5432

Configuração no SQLTools:

Host: localhost

Porta: 5433

Database: ecommerce

Usuário: ecommerce

Senha: Pg1234

📦 Comandos úteis

Ver em qual nó está cada pod:

kubectl get pods -o wide

Escalar réplicas:

kubectl scale deployment fake-shop --replicas=3

Ver logs:

kubectl logs deployment/fake-shop

Deletar tudo:

kubectl delete -f k8s/deployment.yaml
k3d cluster delete fake-shop

🧠 Topologia Resumida

[ Navegador ] --> localhost:31263 (NodePort)
                     |
              [ fake-shop Pod ]
                     |
              [ postgre Service (ClusterIP) ]
                     |
              [ postgre Pod ]

Desenvolvido por Yvens Almeida 👨‍💻