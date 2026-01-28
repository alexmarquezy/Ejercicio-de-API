Proyecto de Automatización de Pruebas API - NTT DATA
1. Descripción del Proyecto
   Se desarrolló una solución de automatización para la validación del servicio de autenticación (Login) utilizando Karate Framework. El proyecto fue estructurado bajo estándares de calidad para asegurar la integridad de las pruebas y la correcta gestión de los datos de entrada.

2. Tecnologías y Versiones Utilizadas

   
Se configuró el entorno de desarrollo cumpliendo estrictamente con los requisitos técnicos solicitados:

IDE: IntelliJ IDEA 2026.

JDK: Versión 17, asegurando la compatibilidad con las últimas características del lenguaje.

Gestor de Dependencias: Maven (versión 3.9.1 compatible), configurado a través del archivo pom.xml.

Framework de Pruebas: Karate Framework con JUnit 5.

3. Manejo de Datos (Parametrización)

   Se implementó el requisito de paso de datos por parámetro mediante el uso de un archivo externo en formato JSON:

Archivo de datos: src/test/java/co/com/nttdata/karate/user.json.

Implementación: El archivo .feature realiza la lectura dinámica de este archivo para inyectar las credenciales en el cuerpo (body) de la petición POST.

4. Estructura de Pruebas (Cucumber/Gherkin)
   Se definieron los escenarios de prueba utilizando sintaxis Gherkin para facilitar la lectura y el mantenimiento:

Feature: login.feature.

Escenario: Validación de inicio de sesión exitoso mediante el método POST y aserciones (Asserts) sobre el token de respuesta.

5. Reportes en Cucumber

   Se dio cumplimiento a la generación de reportes bajo el estándar de Cucumber solicitado. Karate genera automáticamente archivos JSON compatibles con este estándar y un reporte visual detallado:

Ubicación del reporte: target/karate-reports/karate-summary.html.

Detalle: El reporte incluye el paso a paso de la ejecución, los tiempos de respuesta y la validación de los resultados (asserts).

6. Instrucciones de Ejecución


   Para la correcta ejecución del proyecto y visualización de resultados, se deben seguir estos pasos:

Se debe importar el proyecto en IntelliJ IDEA como un proyecto Maven.

Se debe asegurar que el SDK del proyecto esté configurado en Java 17.

Se ejecuta la clase TestRunner.java ubicada en el paquete co.com.nttdata.karate.

Alternativamente, se puede ejecutar el comando mvn test desde la terminal del IDE.

Al finalizar, se debe consultar la ruta target/karate-reports/ para revisar las evidencias del éxito de las pruebas.