# **Microservices in Golang - Infra**

---

## Plataform

- Docker
- Kubernetes

---

## How to build this project

### To build this project, you will need to install the following tools:

## Mandatory Tools:

- Docker
- Docker Compose
- Adding Hosts to /etc/hosts:
  `127.0.0.1 mymicroservices.com`

---

## Optional Tools:

- **_Kubernetes_** (if you want to scale the application)

  - For Ubuntu, Kubernetes can be easily installed using [MicroK8s](https://microk8s.io/)
  - It is necessary to install the following plugins on Kubernetes or MicroK8s:

    - cert-manager (certificate manager for TLS)
    - nginx-ingress-controller (ingress-controller for service routes within Kubernetes)

- **_Portainer_** - [Container manager for both Docker and Kubernetes](https://docs.portainer.io/start/install-ce/server)

---

## Running with Docker:

Build Docker containers for the services by navigating to the service folders containing the Dockerfile and running the command:

#### authentications:

```
docker build --no-cache -t authentications:latest .
```

#### carts:

```
docker build --no-cache -t carts:latest .
```

#### customers:

```
docker build --no-cache -t customers:latest .
```

#### emails:

```
docker build --no-cache -t emails:latest .
```

#### orders:

```
docker build --no-cache -t orders:latest .
```

#### payments:

```
docker build --no-cache -t payments:latest .
```

#### products:

```
docker build --no-cache -t products:latest .
```

#### web:

```
docker build --no-cache -t web:latest .
```

---

In the infra project folder, navigate to the **_monitoring_** folder. In this folder, you'll find the following files:

- **docker-compose.dev.yml** (development)
- **docker-compose.prod.yml** (production)

---

Execute the following command:

```
docker compose -f docker-compose.dev.yml up -d
```

### Development for debugging:

Create the database for the products service, using **pgAdmin 4**:

- Access **_pgAdmin_**: http://localhost:5050
  - Login: admin@admin.com
  - Password: root
- Create a database named "**products**"
- Run the query for the products service: **_sql/01_init.up.sql_** within the **"products"** database to create the tables for this service. **Restart the products-srv service in Docker**.

---

## Running with Kubernetes:

In the infra project folder, navigate to the **_k8s_** folder. In this folder, you'll find the following files:

- **deploy.sh** (deploy the application)

  - run the deploy.sh executable.

- **destroy.sh** (bring down the application)
  - run the destroy.sh executable.

---

## How to access the application

To access the application: https://localhost or https://mymicroservices.com

---

## List of Services

### This service is part of the e-commerce application

- [Authentication](https://github.com/JohnSalazar/microservices-go-authentication)
- [Email](https://github.com/JohnSalazar/microservices-go-email)
- [Customer](https://github.com/JohnSalazar/microservices-go-customer)
- [Product](https://github.com/JohnSalazar/microservices-go-product)
- [Cart](https://github.com/JohnSalazar/microservices-go-cart)
- [Order](https://github.com/JohnSalazar/microservices-go-order)
- [Payment](https://github.com/JohnSalazar/microservices-go-payment)
- [Web](https://github.com/JohnSalazar/microservices-go-web)

---

## About

Infrastructure deployment was developed by [oceano.dev](https://oceano.dev/) <img alt="Brasil" src="https://github.com/JohnSalazar/microservices-go-infra/assets/16736914/8682ce50-e5a3-4f45-ab87-16c71be6e5e1" width="20" height="14" /> team under the [MIT license](LICENSE).
