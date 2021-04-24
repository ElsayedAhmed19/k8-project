
aws eks update-kubeconfig --name K8sCluster2 --region us-east-1

kubectl apply -f deployment/k8s/aws-secret.yaml
kubectl apply -f deployment/k8s/env-secret.yaml
kubectl apply -f deployment/k8s/env-configmap.yaml
kubectl apply -f deployment/k8s/backend-feed-deployment.yaml
kubectl apply -f deployment/k8s/backend-feed-service.yaml
kubectl apply -f deployment/k8s/backend-user-deployment.yaml
kubectl apply -f deployment/k8s/backend-user-service.yaml
kubectl apply -f deployment/k8s/frontend-deployment.yaml
kubectl apply -f deployment/k8s/frontend-service.yaml
kubectl apply -f deployment/k8s/reverseproxy-deployment.yaml
kubectl apply -f deployment/k8s/reverseproxy-service.yaml

kubectl get pods