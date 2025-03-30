# 🛒 Fake Shop – Desafio DEVOPS PRO 2 E 3

Este projeto representa uma **simulação de entrega e monitoramento de software em ambiente de produção**, com foco em **resiliência, escalabilidade e automação**. A aplicação foi implantada em um **cluster Kubernetes** gerenciado na **DigitalOcean**, utilizando práticas modernas de **Integração Contínua e Entrega Contínua (CI/CD)** via **GitHub Actions**.

O objetivo é simular na prática como equipes de desenvolvimento podem entregar novas versões de um sistema de forma confiável, rápida e padronizada, minimizando erros humanos e tempo de inatividade.

---

| PROJETO                          |
|----------------------------------|
| ![](./Guia%20da%20aplica%C3%A7%C3%A3o/projeto.png) |

---
## 🎯 Objetivo do Projeto

Criar um pipeline completo de CI/CD que:

- Faça o **build da imagem Docker** da aplicação Fake Shop  
- Publique a imagem no **Docker Hub**  
- Faça o **deploy automático** no **Kubernetes (DigitalOcean)** a cada alteração no repositório  
- Reduza o tempo e complexidade do deploy, permitindo maior agilidade para os desenvolvedores  
- Inclua **monitoramento de métricas** via **Prometheus** e **Grafana**

---

## 🛠️ Tecnologias Utilizadas

- [Python Flask](https://flask.palletsprojects.com/) – Backend da aplicação  
- [Docker](https://www.docker.com/) – Containerização  
- [Docker Hub](https://hub.docker.com/) – Repositório de imagens  
- [Kubernetes](https://kubernetes.io/) – Orquestração de containers  
- [DigitalOcean](https://www.digitalocean.com/) – Cluster Kubernetes gerenciado  
- [GitHub Actions](https://github.com/features/actions) – CI/CD  
- [Prometheus](https://prometheus.io/) & [Grafana](https://grafana.com/) – Monitoramento  

---

## 🚀 Links de Acesso

🔗 **Aplicação rodando na DigitalOcean**  
➡️ [http://164.90.252.146:5000](http://157.230.67.86:5000)

🐳 **Repositório Docker Hub da imagem**  
➡️ [https://hub.docker.com/r/arthusagufc/fake-shop-desafio](https://hub.docker.com/r/arthusagufc/fake-shop-desafio)

---

## 📸 Capturas do Projeto

| Aplicação                        | Terminal (Cluster)                   |
|----------------------------------|--------------------------------------|
| ![](./Guia%20da%20aplica%C3%A7%C3%A3o/App.png) | ![](./Guia%20da%20aplica%C3%A7%C3%A3o/Cluster.png) |

| DigitalOcean (Cluster)           |
|----------------------------------|
| ![](./Guia%20da%20aplica%C3%A7%C3%A3o/DigitalOcean.png) |

| Prometheus                       | Grafana                 |
|----------------------------------|--------------------------------------|
| ![](./Guia%20da%20aplica%C3%A7%C3%A3o/prometheus.png) | ![](./Guia%20da%20aplica%C3%A7%C3%A3o/grafana.png) |

---

## 📦 Guias de Execução

✅ Cluster local: [`ExecutarLocal.md`](./Guia%20da%20aplica%C3%A7%C3%A3o/ExecutarLocal.md)  
📄 Consultas no banco: [`consultas_fake_shop.sql.md`](./Guia%20da%20aplica%C3%A7%C3%A3o/consultas_fake_shop.sql.md)  
🚀 Pipeline CI/CD: [`Guia CI-CD.md`](./Guia%20da%20aplica%C3%A7%C3%A3o/Guia%20CI-CD.md)  
📊 Monitoramento com Prometheus e Grafana: [`Monitoramento.md`](./Guia%20da%20aplica%C3%A7%C3%A3o/Monitoramento.md)

---

## 📌 Considerações Finais

Durante o desenvolvimento foram realizados testes com:

- Deploy local via [k3d](https://k3d.io/)  
- Validação da imagem Docker diretamente no pod (`kubectl exec`)  
- Análise do HTML no navegador via DevTools  
- Acompanhamento do rollout com `kubectl get pods`, `rollout status`, entre outros comandos

---

---

<h2 align="center">🏅 BADGE DE ENTREGA </h2>

<p align="center">
  <img src="./Guia%20da%20aplica%C3%A7%C3%A3o/Desafio%20DevOps%20%26%20Cloud%20-%20Desafio%20Pipeline%20CICD%20-%202025-03-23.png" alt="Badge Pipeline CI/CD" width="250"/>
  <img src="./Guia%20da%20aplica%C3%A7%C3%A3o/Desafio%20DevOps%20%26%20Cloud%20-%20Desafio%20Kubernetes%20-%202025-03-23.png" alt="Badge Kubernetes" width="250"/>
</p>

---

## 🔗 Desafio Relacionado

Este projeto faz parte de uma sequência de desafios propostos no curso **DEVOPS PRO**.

🔍 Acesse também o repositório do desafio **Conversão de Distâncias** (Docker):

👉 [`Conversão de Distâncias - Desafio Docker`](https://github.com/ArthusAGufc/conversao-distancia)

---

Desenvolvido por **Arthus Almeida** 👨‍💻  
Desafio **DEVOPS PRO 2 e 3 – Fabricio Veronez**

