<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>

[circleci-image]: https://img.shields.io/circleci/build/github/nestjs/nest/master?token=abc123def456
[circleci-url]: https://circleci.com/gh/nestjs/nest


## Description

Software para la gestion de citas clinicas. Realizado por: Alejandro Morales

## Requisitos Previos

Antes de comenzar con la instalación y ejecución de la aplicación, asegúrate de tener los siguientes requisitos instalados en tu sistema:

1/4. **Docker**
   - **Descripción**: Docker es una plataforma que permite crear, desplegar y ejecutar aplicaciones dentro de contenedores.
   - **Instalación**: Sigue las instrucciones en la [documentación oficial de Docker](https://docs.docker.com/get-docker/).

2/4. **Docker Compose**
   - **Descripción**: Docker Compose es una herramienta para definir y ejecutar aplicaciones Docker multi-contenedor.
   - **Instalación**: Sigue las instrucciones en la [documentación oficial de Docker Compose](https://docs.docker.com/compose/install/).

3/4. **Node.js y npm (opcional)**
   - **Descripción**: Aunque Docker se encargará de gestionar las dependencias de Node.js, es posible que necesites Node.js y npm instalados para el desarrollo local y pruebas.
   - **Instalación**: Puedes descargarlo desde [Node.js](https://nodejs.org/) o usar un gestor de versiones como `nvm`.

4/4. **Git (opcional)**
   - **Descripción**: Git es una herramienta de control de versiones que se utiliza para clonar el repositorio.
   - **Instalación**: Sigue las instrucciones en la [documentación oficial de Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).


## Clinic Manager - API

##### 1. Clonar el Proyecto

##### 2. Clonar el archivo ```.env.template``` y renombrarlo a ```.env```

##### 3. Cambiar las variables de entorno


##### 4. Ejecutar el entorno

*  ##### 4.1 Ejecucion de entorno para Desarrollo
   Comando de Docker por primera vez:
```docker compose -f docker-compose.dev.yml up --build -d```
 Comando de Docker para iniciar la aplicacion 
```docker compose -f docker-compose.dev.yml up -d  ```



*  ##### 4.1 Ejecucion de entorno para Produccion

   Comando de Docker por primera vez:
```docker compose -f docker-compose.prod.yml up --build```

   Comando de Docker para iniciar la aplicacion 
```docker compose -f docker-compose.prod.yml up ```

##### Nota: La bandera ```-d``` se utiliza para para el "detached mode" (modo desacoplado o en segundo plano)

##### 5. Ejecutar Seed (Solo Desarollo) - (NO FUNCIONA AUN)
```http://localhost:3000/api/seed```

## Notas adicionales para docker

 ##### La bandera ```--build``` se utiliza para construir la imagen. Si requieres forzar la reconstruccion de la imagen sin utilizar ninguna capa de cache 
 #### Forzar la reconstruccion sin utilizar ninguna capa de cache
 Desarrollo
```docker-compose -f docker-compose.dev.yml up --build --no-cache -d```
Produccion
```docker-compose -f docker-compose.prod.yml up --build --no-cache -d```

#### Detener y eliminar contenedores
Desarrollo
```docker compose -f docker-compose.dev.yml down ```
Produccion
```docker compose -f docker-compose.prod.yml down ```
#### Detener y eliminar contenedores y volumenes
Desarrollo
```docker compose -f docker-compose.dev.yml down -v```
Produccion
```docker compose -f docker-compose.prod.yml down -v```

#### Detener y eliminar contenedores, volumenes e imagenes asociadas
Desarrollo
```docker-compose -f docker-compose.dev.yml down -v --rmi all```

Produccion
```docker-compose -f docker-compose.prod.yml down -v --rmi all```