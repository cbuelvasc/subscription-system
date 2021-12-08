#!/bin/sh

echo "\n-----------------------------------------------------\n"

echo "🍃 Starting Subscription Service deployment"

echo "\n-----------------------------------------------------\n"

echo "🍃 Deploying Config Service..."

kind load docker-image company/configuration-service:0.0.1-SNAPSHOT

kubectl apply -k ../../../configuration-service/k8s

sleep 5

kubectl wait \
  --for=condition=ready pod \
  -l app=configuration-service \
  --timeout=90sfinancia

echo "\n-----------------------------------------------------\n"

echo "🍃 Deploying Subscription Service..."

kind load docker-image company/subscription-service:0.0.1-SNAPSHOT

kubectl apply -k ../../../subscription-service/k8s

sleep 5

kubectl wait \
  --for=condition=ready pod \
  -l app=subscription-service \
  --timeout=90s

echo "\n-----------------------------------------------------\n"

echo "🍃 Deploying Email Service..."

kind load docker-image company/email-service:0.0.1-SNAPSHOT

kubectl apply -k ../../../email-service/k8s

sleep 5

kubectl wait \
  --for=condition=ready pod \
  -l app=email-service \
  --timeout=90s

echo "\n-----------------------------------------------------\n"

echo "🍃 Deploying Edge Service..."

kind load docker-image company/edge-service:0.0.1-SNAPSHOT

kubectl apply -k ../../../edge-service/k8s

sleep 5

kubectl wait \
  --for=condition=ready pod \
  -l app=edge-service \
  --timeout=90s

echo "\n-----------------------------------------------------\n"

echo "🍃 Deployment completed"
