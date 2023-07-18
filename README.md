# Tablero Kanban

Para la utilización del tablero Kanban se optó por la herramienta ClickUp. Se crearon 4 columnas para clasificar las tareas dependiendo su estado:

- _“To do”_, son las tareas a realizar. Están disponibles para seleccionar por los desarrolladores, quienes deben gestionar la asignación y el estado de la tarea.
- _“In progress”_, son las tareas que están siendo desarrolladas. Cada desarrollador debería tener solo una tarea en este estado.
- _“On hold”_, son las tareas que están bloqueadas por algún motivo. Cuando una tarea está en este estado, debe estar indicado en los comentarios por qué lo está y taggeado quién o quiénes podrían brindar una solución al bloqueo.
- _“Complete”_, son las tareas que ya fueron terminadas.

A continuación se adjuntan imágenes de los diferentes estados del tablero a medida que transcurre la realización del proyecto.

![Tablero Kanban](https://raw.githubusercontent.com/FacundoMan/ObligatorioDevOps/master/Imagenes/TableroKanban.PNG)
![Tablero Kanban Semana 2](https://raw.githubusercontent.com/FacundoMan/ObligatorioDevOps/master/Imagenes/kabnan-semana-2.png)

# Análisis ciclos CD/ CI

## Ciclo de CI/CD para el ambiente de Desarrollo (Dev):

- Etapa 1: Desarrollo y Pruebas Locales: Los desarrolladores escriben y prueban el código en sus entornos locales.
- Etapa 2: Integración Continua: El código se integra en un repositorio compartido y se ejecutan pruebas automáticas para asegurar la integridad y la calidad del código.
- Etapa 3: Despliegue en el Ambiente de Desarrollo: Una vez que las pruebas son exitosas, el código se despliega en un entorno de desarrollo compartido donde se puede probar en un contexto más realista.

## Ciclo de CI/CD para el ambiente de Pruebas (Test):

- Etapa 1: Despliegue en el Ambiente de Pruebas: El código aprobado en el ambiente de desarrollo se despliega en un ambiente de pruebas dedicado.
- Etapa 2: Pruebas Automatizadas: Se ejecutan pruebas automatizadas para verificar la funcionalidad, el rendimiento y la compatibilidad del software en el ambiente de pruebas.
- Etapa 3: Pruebas de Aceptación: Se realizan pruebas manuales para validar el software desde la perspectiva del usuario y garantizar que cumpla con los requisitos establecidos.

## Ciclo de CI/CD para el ambiente de Producción (Prod):

- Etapa 1: Despliegue en el Ambiente de Producción: El software aprobado en el ambiente de pruebas se despliega en el ambiente de producción en un entorno controlado.
- Etapa 2: Monitoreo y Operaciones: Se realiza un monitoreo continuo del software en producción para detectar posibles problemas y garantizar un rendimiento óptimo.
- Etapa 3: Actualizaciones y Mantenimiento: Se aplican actualizaciones, correcciones de errores y mejoras en el software en producción de acuerdo con las necesidades del negocio y los requisitos del usuario.

## Por qué usar SonarQube

SonarQube es una herramienta de análisis de código estático que permite identificar y solucionar problemas de seguridad, errores, vulnerabilidades y otros problemas de código en general. Además, proporciona mediciones de calidad y complejidad del código fuente. Una de las ventajas significativas de SonarQube es que es de código abierto, lo que significa que cuenta con una comunidad amplia donde es posible consultar y discutir sobre los problemas encontrados. Esta característica también contribuye a su facilidad de uso, ya que se beneficia de la colaboración y la experiencia colectiva de desarrolladores de todo el mundo.

## Por qué usar Github Action

GitHub Actions es la herramienta que elegimos utilizar para la integración continua (CI) debido a su facilidad de uso y su integración directa en la plataforma de GitHub. Esta característica simplifica la configuración y gestión de los flujos de trabajo. Al estar estrechamente integrado con GitHub, permite una colaboración fluida y un seguimiento de los cambios realizados en el repositorio. Además, GitHub Actions ofrece una amplia variedad de acciones predefinidas y personalizables que facilitan la automatización de tareas comunes en el desarrollo de software.

# Manejo de repositorios y estrategia de ramas

Para el proyecto utilizamos varios repositorios. Uno para cada aplicación de backend y uno para la aplicación de frontend. A su vez tenemos un repositorio en conjunto donde tenemos todos los archivos desarrollados para las etapas de develop y de devops. En el mismo se encuentran todos los archivos solicitados para la entrega final: las imágenes de docker, los archivos de deploy, el readme, los diagramas e imágenes.

## Estrategia de ramas

Para el trabajo de desarrollo utilizamos la estrategia GitFlow, diviendo así nuestro repositorio en tres ramas estables (develop, test, master). A su vez, se crearon ramas efímeras por cada una de las funcionalidades desarrolladas. Por ejemplo, al momento de agregar la imagen de docker del frontend, se creo la branch "feature/fe-docker-image".

A continuación se detalla el diagrama de ramas utilizado:

![Diagrama Estrategia de Ramas](https://raw.githubusercontent.com/FacundoMan/ObligatorioDevOps/master/Imagenes/GitFLow.png)
