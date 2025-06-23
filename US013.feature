Feature: Formulario para reportar incidente.

  Como usuario, quiero llenar un formulario detallado para reportar un incidente vial,
  incluyendo tipo de incidente, ubicación, fecha, hora y evidencia,
  para que otros usuarios estén informados y puedan tomar rutas seguras.

  Scenario: Selección del tipo de incidente
    Given Que el usuario accede al formulario de reporte
    When Visualiza las opciones
    Then Podrá seleccionar una de las categorías opcionales

  Scenario: Autocompletado de ubicación, fecha y hora
    Given Que el usuario está llenando el formulario
    When Accede a los campos de ubicación, fecha y hora
    Then El sistema deberá completarlos automáticamente según la geolocalización del dispositivo y el tiempo actual

  Scenario: Descripción y carga de evidencia del incidente
    Given Que el usuario ya ha seleccionado el tipo de incidente y visualiza el formulario
    When Accede a los campos de texto para detallar lo ocurrido
    And Describe la situación en el campo correspondiente
    And Adjunta una o más imágenes o videos como evidencia del hecho
    Then El sistema aceptará los archivos multimedia compatibles (imágenes o videos)
    And Los mostrará como vista previa antes de enviar

  Ejemplos: Variables de entrada
    | tipo_incidente | ubicación_actual       | fecha       | hora   | archivo_evidencia     |
    | Accidente      | Av. Perú con Universitaria | 2025-06-21 | 08:15  | accidente.jpg          |
    | Obstáculo      | Jr. Los Robles 123         | 2025-06-21 | 18:45  | bloqueo_video.mp4      |

  Ejemplos: Variables de salida
    | resultado_esperado                                                                 |
    | Categoría seleccionada, ubicación/fecha/hora autocompletadas, evidencia mostrada  |
    | Vista previa de archivos adjuntos antes del envío                                  |
