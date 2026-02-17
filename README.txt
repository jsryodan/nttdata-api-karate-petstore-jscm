EJERCICIO 2 - API AUTOMATION (Karate Framework)

Objetivo
Automatizar pruebas de servicios REST para Petstore Swagger:
https://petstore.swagger.io/
Incluye:
- Crear mascota
- Consultar mascota por ID creada recientemente
- Actualizar nombre y estado a "sold" de mascota creada
- Consultar mascotas por estatus

Tecnologías y versiones
- Java JDK: 17
- Maven: 3.9.11
- Karate: 1.4.1
- IntelliJ IDEA

Estructura del proyecto
- src/test/java/petstore/PetstoreRunnerTest.java : Runner JUnit5 de Karate
- src/test/resources/petstore/ : Features Karate
- src/test/resources/testdata/ : JSON request bodies
- src/test/resources/karate-config.js : configuración baseUrl

Ejecución
1) Abrir una terminal en la raíz del proyecto.
2) Ejecutar:
   mvn clean test

Reportes
- Karate genera reportes en:
  target/karate-reports/karate-summary.html

Notas
- Se utiliza la baseUrl:
  https://petstore.swagger.io/v2
- Los request bodies se leen desde JSON en src/test/resources/testdata/
- Se usa callonce para crear una mascota, se reutiliza el petId en escenarios posteriores.