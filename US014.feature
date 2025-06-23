Feature: Confirmación y envío de incidente reportado.

  Como usuario, quiero ver un resumen del incidente que estoy reportando,
  para confirmar que toda la información sea correcta antes de enviarlo.

  Scenario: Confirmación del envío
    Given Que el usuario confirma que todo está correcto
    When Presiona “Enviar”
    Then El sistema guarda el reporte y muestra un mensaje de éxito

  Scenario: Cancelación del reporte
    Given Que el usuario decide no continuar
    When Presiona “Cancelar”
    Then El sistema descarta el incidente y vuelve a la pantalla principal

  Ejemplos: Variables de entrada
    | acción_usuario |
    | Enviar         |
    | Cancelar       |

  Ejemplos: Variables de salida
    | resultado_esperado                                     |
    | Mensaje de éxito: "Reporte enviado correctamente"       |
    | Incidente descartado y redirección a pantalla principal |
