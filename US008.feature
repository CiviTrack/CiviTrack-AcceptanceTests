Feature: Visualización de pantalla de inicio personalizada según rol.

  Como usuario, quiero ver una pantalla de inicio adaptada a mi rol (estudiante o conductor), 
  para acceder rápidamente a funciones y contenidos relevantes para mí.

  Scenario: Pantalla personalizada para estudiante
    Given Que el usuario ha elegido el rol "Estudiante"
    When Accede a la pantalla de inicio
    Then El sistema mostrará:
      | saludo con su nombre y acceso a rutas guardadas                  |
      | bloque visible con acceso a sus rutas seguras                    |
      | bloque visible con las alertas viales activas                    |
      | bloque “Revisa tu reporte de actividad semanal” en la parte inferior |
      | barra de tareas fija con íconos de: Inicio, Reportar y Lista de Reportes |

  Scenario: Pantalla personalizada para conductor
    Given Que el usuario ha elegido el rol "Conductor"
    When Accede a la pantalla de inicio
    Then El sistema mostrará:
      | saludo con su nombre y acceso a rutas asignadas                  |
      | alertas viales activas en su ruta habitual                       |
      | registro de trayectos recientes                                   |
      | acceso directo a su reporte de actividad semanal                 |
      | barra de tareas fija con íconos de: Inicio, Reportar y Lista de Reportes |

  Scenario: Acceso directo a pantalla correspondiente
    Given Que el usuario ya tiene su rol definido
    When Inicia sesión
    Then El sistema lo dirigirá automáticamente a la pantalla de inicio correspondiente a su rol, sin necesidad de selección adicional

  Ejemplos: Variables de entrada
    | rol        | acción_usuario       |
    | Estudiante | Accede a inicio      |
    | Conductor  | Accede a inicio      |

  Ejemplos: Variables de salida
    | contenido_personalizado                                                                            |
    | Elementos relevantes para estudiante visibles en pantalla de inicio                               |
    | Elementos relevantes para conductor visibles en pantalla de inicio                                |
    | Redirección automática a la vista correspondiente sin selección adicional                         |
