# install kubectl
curl -Ls "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" --output /tmp/kubectl
sudo install /tmp/kubectl /usr/local/bin/kubectl
kubectl version --client

# install minikube
curl -Ls https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 --output /tmp/minikube-linux-amd64
sudo install /tmp/minikube-linux-amd64 /usr/local/bin/minikube
minikube version

# starting minikube
minikube start --cpus 2 --memory 4096

# enabled ingress & metrics servers
minikube addons enable ingress
minikube addons enable metrics-server

# enabled tunnel & dashboard
minikube tunnel > /dev/null &
minikube dashboard > /dev/null &