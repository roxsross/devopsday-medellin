# Integrando CHAOS en GITLAB

## Cómo configurar GitLab para ejecutar un Experimento de Caos en el entorno de CI de GitLab con LitmusChaos. 

Antes de comenzar, hagamos un breve repaso sobre Litmus. Litmus es un marco para practicar ingeniería del caos en entornos nativos de la nube. Litmus proporciona un operador de caos, un gran conjunto de experimentos de caos en su hub, documentación detallada y una comunidad amigable.

## Instalar litmus 

Sigue la documentación [oficial](https://docs.litmuschaos.io/docs/getting-started/installation)

![](https://docs.litmuschaos.io/assets/images/login-72f2d704da93483e7f0b44b1ddac5c13.png)

## Instalar ingress 

Pasos [Link](https://docs.litmuschaos.io/docs/user-guides/setup-with-ingress)

## Crear Repositoria GITLAB

Configurar en variables globales protegidas
```
  LITMUS_ENDPOINT: ""
  LITMUS_USERNAME: ""
  LITMUS_PASSWORD: ""
```

Agregar el .gitlab-ci 

Siguiendo este template base [](./.gitlab-ci.yml)