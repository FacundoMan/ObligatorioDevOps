


# Tablero Kanban
Para la utilización del tablero Kanban se optó por la herramienta ClickUp. Se crearon 4 columnas para clasificar las tareas dependiendo su estado:
* _“To do”_, son las tareas a realizar. Están disponibles para seleccionar por los desarrolladores, quienes deben gestionar la asignación y el estado de la tarea.
* _“In progress”_, son las tareas que están siendo desarrolladas. Cada desarrollador debería tener solo una tarea en este estado.
* _“On hold”_, son las tareas que están bloqueadas por algún motivo. Cuando una tarea está en este estado, debe estar indicado en los comentarios por qué lo está y taggeado quién o quiénes podrían brindar una solución al bloqueo.
* _“Complete”_, son las tareas que ya fueron terminadas.

A continuación se adjuntan imágenes de los diferentes estados del tablero a medida que transcurre la realización del proyecto.

![Tablero Kanban](https://raw.githubusercontent.com/FacundoMan/ObligatorioDevOps/master/Imagenes/TableroKanban.PNG)

# Análisis ciclos CD/ CI
## Ciclo de CI/CD para el ambiente de Desarrollo (Dev):

* Etapa 1: Desarrollo y Pruebas Locales: Los desarrolladores escriben y prueban el código en sus entornos locales.
* Etapa 2: Integración Continua: El código se integra en un repositorio compartido y se ejecutan pruebas automáticas para asegurar la integridad y la calidad del código.
* Etapa 3: Despliegue en el Ambiente de Desarrollo: Una vez que las pruebas son exitosas, el código se despliega en un entorno de desarrollo compartido donde se puede probar en un contexto más realista.

## Ciclo de CI/CD para el ambiente de Pruebas (Test):


* Etapa 1: Despliegue en el Ambiente de Pruebas: El código aprobado en el ambiente de desarrollo se despliega en un ambiente de pruebas dedicado.
* Etapa 2: Pruebas Automatizadas: Se ejecutan pruebas automatizadas para verificar la funcionalidad, el rendimiento y la compatibilidad del software en el ambiente de pruebas.
* Etapa 3: Pruebas de Aceptación: Se realizan pruebas manuales para validar el software desde la perspectiva del usuario y garantizar que cumpla con los requisitos establecidos.

## Ciclo de CI/CD para el ambiente de Producción (Prod):

* Etapa 1: Despliegue en el Ambiente de Producción: El software aprobado en el ambiente de pruebas se despliega en el ambiente de producción en un entorno controlado.
* Etapa 2: Monitoreo y Operaciones: Se realiza un monitoreo continuo del software en producción para detectar posibles problemas y garantizar un rendimiento óptimo.
* Etapa 3: Actualizaciones y Mantenimiento: Se aplican actualizaciones, correcciones de errores y mejoras en el software en producción de acuerdo con las necesidades del negocio y los requisitos del usuario.

## Por que usar SonarQube (///Revisar)
SonarQube es una herramienta de codigo estatico, que se utiliza para detectar y corregir problemas de seguridad, bugs, vulnerabilidades y problemas de código en general, así como medir la calidad y complejidad del código fuente. 
Al ser de codigo abierto esto le da una gran ventaja debido a que tiene una comunidad grande, donde se puede consultar los problemas. Y es muy facil de usar.

## Por que usar Github Action (///Revisar)
GitHub Action es la herramienta que decidimos usar en CI debido a que era facil de usar, y su integracion era bastante sensilla y como esta integrado directamente en la plataforma de GitHub, lo que simplifica la configuración y gestión de los flujos de trabajo.
