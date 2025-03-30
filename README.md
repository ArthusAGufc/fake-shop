# 🛒 Fake Shop – Desafio DEVOPS PRO

Este projeto representa uma **simulação de entrega e monitoramento de software em ambiente de produção**, com foco em **resiliência, escalabilidade e automação**. A aplicação foi implantada em um **cluster Kubernetes** gerenciado na **DigitalOcean**, utilizando práticas modernas de **Integração Contínua e Entrega Contínua (CI/CD)** via **GitHub Actions**.

O objetivo é simular na prática como equipes de desenvolvimento podem entregar novas versões de um sistema de forma confiável, rápida e padronizada, minimizando erros humanos e tempo de inatividade.

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
➡️ [http://164.90.252.146:5000](http://164.90.252.146:5000)

🐳 **Repositório Docker Hub da imagem**  
➡️ [https://hub.docker.com/r/arthusagufc/fake-shop-desafio](https://hub.docker.com/r/arthusagufc/fake-shop-desafio)

---

## 📸 Capturas do Projeto

| Aplicação em Produção | Terminal (CI/CD, kubectl) |
|------------------------|----------------------------|
| ![Aplicação](fake-shop/Guia da aplicação/app.png) | ![Terminal](fake-shop/Guia da aplicação/Cluster.png) |

| DigitalOcean - Cluster Kubernetes | Dashboard Grafana |
|----------------------------------|--------------------|
| ![DigitalOcean](fake-shop/Guia da aplicação/DigitalOcean.png) | ![Grafana](docs/imgs/grafana.png) |

---

## 📦 Guias de Execução

- ✅ Cluster local: [`ExecutarLocal.md`](./ExecutarLocal.md)  
- 📊 Consultas no banco: [`consultas_fake_shop.sql.md`](./consultas_fake_shop.sql.md)  
- 🔄 Pipeline CI/CD: [`Guia CI-CD.md`](./Guia%20CI-CD.md)  
- 📈 Monitoramento com Prometheus e Grafana: [`Monitoramento.md`](./Monitoramento.md)  

---

## 📌 Considerações Finais

Durante o desenvolvimento foram realizados testes com:

- Deploy local via [k3d](https://k3d.io/)  
- Validação da imagem Docker diretamente no pod (`kubectl exec`)  
- Análise do HTML no navegador via DevTools  
- Acompanhamento do rollout com `kubectl get pods`, `rollout status`, entre outros comandos

---

Desenvolvido por **Arthus Almeida** 👨‍💻  
Desafio **DEVOPS PRO 2 – Fabricio Veronez**

