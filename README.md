# README

Proyecto de prueba de backend con Ruby on Rails para proyecto final del Bootcamp de Devops de Geekshubs.

La aplicación tendra una Api `api/v1/ping` con un endpoint, al cual se le puede llamar con el método `GET api/v1/ping?name=${nombre}&times=${numero_de_veces}` en la que se le pasará un nombre y un número. Y este te devolverá Me ha llamado "nombre". 

Además la aplicación se llamará a sí mismo pasandole el nombre de la maquina en la que esté alojado y un número menos al que recibió como parámetro, siempre y cuando el número que haya recibido no sea menor igual a 0. 

Así, se llamará a la aplicación el número de veces que se le pase en la llamada principal.

## Idea

La idea es tener la aplicación desplegada en `Kubernetes` con 4 replicas y ver como van recibiendo las distintas réplicas las peticiones.

Además la aplicación estará monitorizada utilizando `Prometheus`.

En este proyecto se trabajará con el workflow `feature branch`

## Docker

Para lanzar la aplicación en local, mediante docker, ejecutar:

~~~bash
docker build -t backend-project .
docker run -p 3000:3000 -v .:  backend-project
~~~