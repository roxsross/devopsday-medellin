# Devopsday-medellin

![JavaScript](https://img.shields.io/badge/-JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=black)
![Node.js](https://img.shields.io/badge/-Node.js-339933?style=for-the-badge&logo=node.js&logoColor=white)
![HTML5](https://img.shields.io/badge/-HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-7B42BC?logo=terraform&logoColor=white&style=for-the-badge)
![VSCode](https://img.shields.io/badge/Visual_Studio_Code-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white)
![kubernetes](https://img.shields.io/badge/kubernetes-326CE5?logo=kubernetes&logoColor=white&style=for-the-badge)
![Azure](https://img.shields.io/badge/azure-0078D4?logo=microsoft-azure&logoColor=white&style=for-the-badge)
![Amazon](https://img.shields.io/badge/Amazon_AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Gcp](https://img.shields.io/badge/Google_Cloud-4285F4?style=for-the-badge&logo=google-cloud&logoColor=white)
![Docker](https://img.shields.io/badge/docker-2496ED?logo=docker&logoColor=white&style=for-the-badge)
![python](https://img.shields.io/badge/python-3776AB?logo=python&logoColor=white&style=for-the-badge)
![golang](https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white)
![github Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)
![Gitlab](https://img.shields.io/badge/GitLab-330F63?style=for-the-badge&logo=gitlab&logoColor=white)
![Jenkins](	https://img.shields.io/badge/Jenkins-D24939?style=for-the-badge&logo=Jenkins&logoColor=white)
![city](https://img.shields.io/badge/TeamCity-000000?style=for-the-badge&logo=TeamCity&logoColor=white)

---
![](https://github.com/roxsross/roxsross/blob/main/images/roxsross-banner-1.png)

🔥🔥🔥🔥

### by RoxsRoss


LitmusChaos nace con el objetivo de ayudar a desarrolladores y SREs (Site Reliability Engineering ) de Kubernetes a identificar puntos débiles y mejorar la resiliencia de sus aplicaciones/plataformas proporcionando un marco de trabajo completo.

Sus principales ventajas respecto a otras herramientas son:

- Experimentos declarativos mediante K8S CRDs (Custom Resource Definition): todos los componentes (planificación, ejecución, parametrización, etc.) de un experimento se definen dentro del ámbito de kubernetes haciendo uso de YAML.
- Múltiples experimentos predefinidos: dispone de un conjunto de experimentos suficientemente amplio para dar cobertura a los principales recursos de K8s.
SDK en Go/Python/Ansible para desarrollar tus propios experimentos: dispone de un metodología de desarrollo bien definida para construir experimentos que se adapten a tus necesidades particulares.
- Creación de workflows a través de GUI: con Litmus UI Portal puedes crear workflows complejos utilizando todos los experimentos predefinidos mediante interfaz web.
Fácil integración en pipelines CI/CD: invocar y obtener el resultado de un experimento es extremadamente fácil.
- Exportación de métricas: puedes exportar distintas métricas de tus experimentos directamente a Prometheus.
El producto está liberado bajo licencia Apache-2.0, dispone de una amplia comunidad de desarrolladores y desde 2020 pertenece a Cloud Native Computing Foundation.

## Propuestas CICD

Uso de Jenkins [leer](README-JENKINS.md)

Uso de Gitlab [leer](README-JENKINS.md)

### Consideraciones finales
Debemos asumir que nuestro sistema no va a ser 100% tolerante a fallos pero ello no implica que pongamos todos los medios para minimizar los riesgos y en caso de producirse el desastre, lo hagamos de una forma relativamente controlada. La clave del éxito pasa por aplicar las prácticas de ingeniería del caos en fases tempranas del desarrollo, conocer las particularidades de la infraestructura donde ejecuta y disponer de herramientas adecuadas para automatizar las pruebas.

Un factor importante es dimensionar los esfuerzos en base a la criticidad del servicio que presta nuestro sistema: el esfuerzo en validar la resiliencia de un portal con información para empleados con 100 usuarios potenciales cuyo SLA es del 98% difiere mucho de una aplicación bancaria que realiza operaciones financieras a miles de usuarios concurrentes cuyo SLA es del 99.9XX%. En ambos casos el único método para verificar el cumplimiento del SLA es mediante test de resiliencia pero existe una notable diferencia respecto al esfuerzo que deberíamos dedicar.

Nos hemos centrado en Litmus y Kubernetes pero cabe recordar que dependiendo del sistema que estemos desarrollando, tengamos que complementar nuestras pruebas con otras herramientas, principalmente las enfocadas a la inyección de fallos sobre infraestructura


### ¿Eres un DevOPs/SRE o un entusiasta de Kubernetes? ¿Te emociona la Ingeniería del Caos?
- Únete a nuestra comunidad en Slack para discusiones detalladas, retroalimentación y actualizaciones regulares sobre Ingeniería del Caos para Kubernetes: https://kubernetes.slack.com/messages/CNXNB0ZTN
(canal #litmus en el espacio de trabajo de Kubernetes)
- Visita el repositorio de Litmus Chaos en GitHub y comparte tus comentarios: https://github.com/litmuschaos/litmus
- Envía una solicitud de pull si identificas algún cambio necesario.
