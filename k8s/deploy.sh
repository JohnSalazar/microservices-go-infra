#!/bin/bash

microk8s kubectl apply -f ./namespace/namespace.yaml

microk8s kubectl apply -f ./consul/consul.yaml

microk8s kubectl apply -f ./mailhog/mailhog.yaml

microk8s kubectl apply -f ./mongodb/mongodb.yaml

microk8s kubectl apply -f ./monitoring/jaeger/jaeger.yaml

microk8s kubectl apply -f ./monitoring/mongoexporter/mongoexporter.yaml

microk8s kubectl apply -f ./monitoring/prometheus/pushgateway.yaml

microk8s kubectl apply -f ./nats/nats.yaml

microk8s kubectl apply -f ./postgres/postgres.yaml

microk8s kubectl apply -f ./redis/redis.yaml

microk8s kubectl apply -f ./services/certs-pv-claim.yaml
microk8s kubectl apply -f ./services/certs-pv-volume.yaml

microk8s kubectl apply -f ./services/certificate-key-permission.yaml

microk8s kubectl apply -f ./services/authentications-dpl.yaml
microk8s kubectl apply -f ./services/carts-dpl.yaml
microk8s kubectl apply -f ./services/customers-dpl.yaml
microk8s kubectl apply -f ./services/emails-dpl.yaml
microk8s kubectl apply -f ./services/orders-dpl.yaml
microk8s kubectl apply -f ./services/payments-dpl.yaml
microk8s kubectl apply -f ./services/products-dpl.yaml
microk8s kubectl apply -f ./services/web-dpl.yaml

microk8s kubectl apply -f ./ingress-jaeger.yaml
microk8s kubectl apply -f ./ingress-mailhog.yaml
microk8s kubectl apply -f ./ingress-nats.yaml
microk8s kubectl apply -f ./ingress-web.yaml
microk8s kubectl apply -f ./ingress.yaml