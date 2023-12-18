#!/bin/bash

microk8s kubectl delete deployment -n mymicroservices consul-dpl
microk8s kubectl delete service -n mymicroservices consul-svc

microk8s kubectl delete deployment -n mymicroservices mailhog-dpl
microk8s kubectl delete service -n mymicroservices mailhog-web-svc
microk8s kubectl delete service -n mymicroservices mailhog-smtp-svc

microk8s kubectl delete statefulset -n mymicroservices mongodb-server-state
microk8s kubectl delete service -n mymicroservices mongodb-server-svc

microk8s kubectl delete statefulset -n mymicroservices postgres-server-state
microk8s kubectl delete service -n mymicroservices postgres-server-svc

microk8s kubectl delete deployment -n mymicroservices jaeger-dpl
microk8s kubectl delete service -n mymicroservices jaeger-query-svc
microk8s kubectl delete service -n mymicroservices jaeger-collector-svc
microk8s kubectl delete service -n mymicroservices jaeger-agent-svc
microk8s kubectl delete service -n mymicroservices zipkin-svc

microk8s kubectl delete deployment -n mymicroservices mongo-exporter-dpl
microk8s kubectl delete service -n mymicroservices mongo-exporter-svc

microk8s kubectl delete deployment -n observability pushgateway-dpl
microk8s kubectl delete service  -n observability pushgateway-svc

microk8s kubectl delete deployment -n mymicroservices nats-streaming-dpl
microk8s kubectl delete service -n mymicroservices nats-streaming-svc

microk8s kubectl delete deployment -n mymicroservices redis-server-dpl
microk8s kubectl delete service -n mymicroservices redis-server-svc

microk8s kubectl delete deployment -n mymicroservices authentication-dpl
microk8s kubectl delete service -n mymicroservices authentication-svc
microk8s kubectl delete deployment -n mymicroservices cart-dpl
microk8s kubectl delete service -n mymicroservices cart-svc
microk8s kubectl delete deployment -n mymicroservices customer-dpl
microk8s kubectl delete service -n mymicroservices customer-svc
microk8s kubectl delete deployment -n mymicroservices email-dpl
microk8s kubectl delete service -n mymicroservices email-svc
microk8s kubectl delete deployment -n mymicroservices order-dpl
microk8s kubectl delete service -n mymicroservices order-svc
microk8s kubectl delete deployment -n mymicroservices payment-dpl
microk8s kubectl delete service -n mymicroservices payment-svc
microk8s kubectl delete deployment -n mymicroservices product-dpl
microk8s kubectl delete service -n mymicroservices product-svc
microk8s kubectl delete deployment -n mymicroservices web-dpl
microk8s kubectl delete service -n mymicroservices web-svc

microk8s kubectl delete ingress -n mymicroservices ingress-jaeger
microk8s kubectl delete ingress -n mymicroservices ingress-mailhog
microk8s kubectl delete ingress -n mymicroservices ingress-nats
microk8s kubectl delete ingress -n mymicroservices ingress-web
microk8s kubectl delete ingress -n mymicroservices ingress