# 🛒 Fake Shop – Desafio DEVOPS PRO

Este projeto representa uma **simulação de entrega e monitoramento de software em ambiente de produção**, com foco em **resiliência, escalabilidade e automação**. A aplicação foi implantada em um **cluster Kubernetes** gerenciado na **DigitalOcean**, utilizando práticas modernas de **Integração Contínua e Entrega Contínua (CI/CD)** via **GitHub Actions**.

O objetivo é simular na prática como equipes de desenvolvimento podem entregar novas versões de um sistema de forma confiável, rápida e padronizada, minimizando erros humanos e tempo de inatividade.

---

## 🎯 Objetivo do Projeto

Criar um pipeline completo de CI/CD que:

- Faça o **build da imagem Docker** da aplicação Fake Shop
- Publique a imagem no **Docker Hub**
- Faça o **deploy automático** no **Kubernetes (DigitalOcean)**a cada alteração no repositório
- Reduza o tempo e complexidade do deploy, permitindo maior agilidade para os desenvolvedores
- Monitoramento de metricas via PROMETHEUS E GRAFANA

---

## 🛠️ Tecnologias Utilizadas

- [Python Flask](https://flask.palletsprojects.com/) – Backend da aplicação
- [Docker](https://www.docker.com/) – Containerização
- [Docker Hub](https://hub.docker.com/) – Repositório de imagens
- [Kubernetes](https://kubernetes.io/) – Orquestração de containers
- [DigitalOcean](https://www.digitalocean.com/) – Cluster Kubernetes gerenciado
- [GitHub Actions](https://github.com/features/actions) – CI/CD

---

## 🚀 Links de acesso

🔗 **Aplicação rodando na DigitalOcean**  
➡️ [http://164.90.252.146:5000](http://164.90.252.146:5000)

🐳 **Repositório Docker Hub da imagem**  
➡️ [https://hub.docker.com/r/arthusagufc/fake-shop-desafio](https://hub.docker.com/r/arthusagufc/fake-shop-desafio)

---

## 📦 Guias de execução e testes disponiveis em:
- Cluster local: ExecutarLocal.md
- Consultas no banco: consultas_fake_shop.sql.md
- Pipeline CI/CD: Quia CI-CD.md
- Monitoramento: 
  
---

## 📌 Considerações Finais

Durante o desenvolvimento foram realizados testes com:

- Deploy local via [k3d](https://k3d.io/)
- Validação da imagem Docker diretamente no pod (`kubectl exec`)
- Análise do HTML no navegador via DevTools
- Acompanhamento do rollout com `kubectl get pods`, `rollout status`, etc.

---

Desenvolvido por Arthus Almeida 👨‍💻, para o desafio DEV OPS PRO 2, Fabricio Veronez  
