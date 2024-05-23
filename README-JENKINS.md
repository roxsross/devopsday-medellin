# devopsday-medellin

# (DEMO) LITMUS CHAOS en PIPELINE

Una demostración que muestra cómo usar LitmusChaos  con Jenkins y Minikube usando Docker.

## Requisitos

- [Docker](https://www.docker.com/)
- [Minikube](https://minikube.sigs.k8s.io/docs/start/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
- [litmusctl](https://github.com/litmuschaos/litmusctl)

### Plugins de Jenkins

- [Kubernetes](https://plugins.jenkins.io/kubernetes/) (para conectar y configurar nuestro clúster)
- [Kubernetes CLI](https://plugins.jenkins.io/kubernetes-cli/) (para permitirnos ejecutar comandos de kubectl desde los pods)

## Entorno

- **Clústeres**
  - `Litmus-dashboard-cluster`: clúster donde se despliegan el Litmus Dashboard (ChaosCenter) y el plano de control.
  - `Jenkins-cloud-cluster`: clúster de slave de Jenkins donde se ejecutan los pipelines.

- **Contenedores Docker**
  - `Jenkins`: contenedor Docker donde se ejecuta el master de Jenkins.

*Todas las instancias deben desplegarse en la misma red Docker para que puedan interactuar entre sí.*